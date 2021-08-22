import UIKit

class TableViewController: UITableViewController {
    
    var data = ["This is section 0, row 0", "This is section 0, row 1", "This is section 0, row 2", "This is section 0, row 3", "This is section 0, row 4", "This is section 0, row 5", "This is section 0, row 6", "This is section 0, row 7", "This is section 0, row 8", "This is section 0, row 9", "This is section 0, row 10"]

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    func configureTableView() {
        tableView.rowHeight = 101
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)  ->UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableView", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
}


