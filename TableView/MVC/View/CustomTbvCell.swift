//
//  CustomTbvCell.swift
//  TableView
//
//  Created by Gali Srikanth on 01/08/18.
//  Copyright © 2018 Gs19. All rights reserved.
//

import UIKit

class CustomTbvCell: UITableViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDesp: VerticalAlignLabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
