

import UIKit

class ColorsTableViewController: UITableViewController {
    
    var colorNames = [String]()
    var colorColors = [UIColor] ()

    override func viewDidLoad() {
        super.viewDidLoad()
        colorNames = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
        colorColors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple, UIColor.brown]

    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorsTableCell", for: indexPath) as! ColorsTableViewCell

        
        let row = indexPath.row
        cell.colorLabel.text = colorNames[row]
        cell.backgroundColor = colorColors[row]

        return cell
    }
    

}
