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
        setupui()
        
    }
    
    func setupui()
    {
        
    }
}
extension ViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

class viewcell: UITableViewCell
{
    @IBOutlet weak var bgview: UIView!
    @IBOutlet weak var imgcontact: UIImageView!
    @IBOutlet weak var lblname: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        bgview.layer.cornerRadius = 10
        bgview.backgroundColor = UIColor.lightGray
        imgcontact.layer.cornerRadius = 30
    }
}

