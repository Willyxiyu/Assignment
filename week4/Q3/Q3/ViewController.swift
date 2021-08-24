import UIKit

class ViewController: UIViewController {
    
    struct StationData: Decodable {
        let stationID: String
        let stationName: String
        let stationAddress: String
    }
    
    @IBOutlet weak var stationIDText: UILabel!
    @IBOutlet weak var stationNameText: UILabel!
    @IBOutlet weak var stationAddressText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let url = "https://stations-98a59.firebaseio.com/practice.json"
        getData(from: url)
    }
    
    private func getData(from url :String) {
        
        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            
            guard let data = data, error == nil else {
                print("something went wroung")
                return
            }
            
            var result: StationData?
            do {
                result = try JSONDecoder().decode(StationData.self, from: data)
            }
            
            catch {
                print("failed to convert \(error.localizedDescription)")
            }
            
            guard let json = result else {
                return
            }
            
            print(json.stationID)
            print(json.stationName)
            print(json.stationAddress)
        })
        
        task.resume()
    }
    
}
