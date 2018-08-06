//
//  ViewController.swift
//  TableView
//
//  Created by Gali Srikanth on 01/08/18.
//  Copyright © 2018 Gs19. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var arrIs = ["Wow, this text is really", "This is another text, and it is a little bit longer.Wow, this text is really very very long! I hope it can be read completely! Luckily, we are using automatic row height!", "Wow, this text is really very very long","Wow, this text is really", "This is another text, and it is a little bit longer.Wow, this text is really very very long! I hope it can be read completely! Luckily, we are using automatic row height!", "Wow, this text is really very very long","Wow, this text is really", "This is another text, and it is a little bit longer.Wow, this text is really very very long! I hope it can be read completely! Luckily, we are using automatic row height!", "Wow, this text is really very very long"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 85
        
        tableView.reloadData()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrIs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTbvCell", for: indexPath) as! CustomTbvCell
        
        let content = arrIs[indexPath.row]
        
        cell.lblTitle.text = "Title Label"
        cell.lblDesp.text = content
        
        return cell
    }
}
