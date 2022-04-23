//
//  DashboardViewController.swift
//  TableView
//
//  Created by Saanvi on 20/03/22.
//

import UIKit

class DashboardViewController: UIViewController {

    @IBOutlet weak var tbv: UITableView!
    var dataArr:[String] = [String]() {
        didSet{
            tbv.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupVC()
    }
    
    private func setupVC() {
        setupTbv()
        updateViewWithData()
    }
    
    private func updateViewWithData() {
        //dataArr = ["Srikanth", "Sagarika", "Saanvi", "RaviShekar", "Sujatha", "Bairaiah"]
    }

}

extension DashboardViewController: UITableViewDataSource, UITableViewDelegate {
    
    private func setupTbv() {
        tbv.dataSource = self
        tbv.delegate = self
        
        tbv.backgroundColor = .clear
        tbv.separatorColor = .clear
        
        tbv.showsVerticalScrollIndicator = false
        tbv.setNoDataView(WithErrorStr: "No data found")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataArr.count == 0 ? self.tbv.showNoDataView() : self.tbv.hideNoDataView()
        return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customTbvCell = tableView.dequeueReusableCell(withIdentifier: CustomTbvCell.identifier, for: indexPath) as! CustomTbvCell
        customTbvCell.configureCell()
        return customTbvCell
    }
    
}
