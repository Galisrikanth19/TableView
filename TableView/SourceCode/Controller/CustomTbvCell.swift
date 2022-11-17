//
//  CustomTbvCell.swift
//  TableView
//
//  Created by Saanvi on 20/03/22.
//

import UIKit

class CustomTbvCell: UITableViewCell {
    @IBOutlet weak var titleLbl: UILabel!
    var userM: UserModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureCell(WithUserModel userM: UserModel) {
        self.backgroundColor = .clear
        self.selectionStyle = .none
        self.userM = userM
        updateViewWithData()
    }
    
    private func updateViewWithData() {
        titleLbl.text = userM?.titleStr ?? ""
    }
}
