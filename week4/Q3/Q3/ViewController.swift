import UIKit

class ViewController: UIViewController {
    
    struct StationJSON : Codable {
        let stationID : String
        let stationName : String
        let stationAddress : String
    }
    
    @IBOutlet weak var stationIDText: UILabel!
    @IBOutlet weak var stationNameText: UILabel!
    @IBOutlet weak var stationAddressText: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadStationItem()
        
    }
    
    func loadStationItem() {
        let configuration = URLSessionConfiguration.ephemeral
        
        let session = URLSession(configuration: configuration)
        
        let url = URL(string: "https://stations-98a59.firebaseio.com/practice.json")!
        
        let task = session.dataTask(with: url) {
            
            (data, response, error) in
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let data = data else {
                return
        }
            do {
        let decofer 
        
        
    }

    let queue = OperationQueue.main
    queue.addOperation {
    self.tableView.reloadData()
    }
    
} catch {
    print("Error info: \(error)")
}
    
}

task.resume()

}
