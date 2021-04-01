//
//  ViewController.swift
//  CustomCells
//
//  Created by Pritam Bolenwar on 17/02/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    
    let data = ["One", "Two", "Three", "Four", "Five"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "DemoCustomTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DemoCustomTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
}
// Marks: TableView Funcs
extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoCustomTableViewCell", for: indexPath) as! DemoCustomTableViewCell
        cell.myLabel?.text = data[indexPath.row]
        cell.myImage?.backgroundColor = .lightGray

        return cell
    }
    
    
}
