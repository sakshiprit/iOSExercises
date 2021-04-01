//
//  ViewController.swift
//  Contacts
//
//  Created by Pritam Bolenwar on 17/02/21.
//

import UIKit

class ViewController: UIViewController {
    
    let names = [
    "Jason smith",
    "Dan smith",
    "Linda smith",
    "Sarah smith"]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.delegate = self
        tableView.dataSource = self
    }
}
    
    extension ViewController: UITableViewDelegate{
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print ("You tapped me!")
        }
         
       
    }
    extension ViewController : UITableViewDataSource{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return names.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath )
            
            cell.textLabel?.text = names[indexPath.row]
            
            return cell
        }
        
    }




