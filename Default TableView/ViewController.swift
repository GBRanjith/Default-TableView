//
//  ViewController.swift
//  Default TableView
//
//  Created by Ranjith on 09/05/23.
//

import UIKit

class ViewController: UIViewController{

    let datas = ["Ranjith","ravi","vinoth","arun"]
      
    @IBOutlet weak var tableview: UITableView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.delegate = self
        
    }
}
extension ViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = datas[indexPath.row]
        return cell
    }
}

