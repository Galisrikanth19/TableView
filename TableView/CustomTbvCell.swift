//
//  CustomTbvCell.swift
//  TableView
//
//  Created by Elorce on 20/03/22.
//

import UIKit

class CustomTbvCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureCell() {
        self.backgroundColor = .clear
        self.selectionStyle = .none
    }

}
