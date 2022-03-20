//
//  ViewController.swift
//  TableView
//
//  Created by Elorce on 20/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tbv: UITableView!
    private var dataArr:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTbv()
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    private func setupTbv() {
        tbv.dataSource = self
        tbv.delegate = self
        tbv.backgroundColor = .clear
        tbv.separatorColor = .clear
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20//dataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let customTbvCell = tableView.dequeueReusableCell(withIdentifier: CustomTbvCell.identifier, for: indexPath) as? CustomTbvCell {
            customTbvCell.configureCell()
            return customTbvCell
        }
        return UITableViewCell()
    }
    
}
