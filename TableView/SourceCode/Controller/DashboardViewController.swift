//
//  DashboardViewController.swift
//  TableView
//
//  Created by Saanvi on 20/03/22.
//

import UIKit

class DashboardViewController: UIViewController {
    @IBOutlet weak var tbv: UITableView!
    var dataArr:[UserModel] = [UserModel]() {
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
        dataArr = []//UserModelData.userModelDataArr
    }
}

extension DashboardViewController: UITableViewDataSource, UITableViewDelegate {
    private func setupTbv() {
        tbv.dataSource = self
        tbv.delegate = self
        
        tbv.backgroundColor = .clear
        tbv.separatorColor = .clear
        
        tbv.showsHorizontalScrollIndicator = false
        tbv.showsVerticalScrollIndicator = false
        tbv.setNoDataView(WithTitleStr: "No data found")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataArr.count == 0 ? self.tbv.showNoDataView() : self.tbv.hideNoDataView()
        //dataArr.count == 0 ? self.tbv.setEmptyMessage("No data found") : self.tbv.restore()
        return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customTbvCell = tableView.dequeueReusableCell(withIdentifier: CustomTbvCell.className, for: indexPath) as! CustomTbvCell
        customTbvCell.configureCell(WithUserModel: dataArr[indexPath.row])
        return customTbvCell
    }
}
