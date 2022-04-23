//
//  NSObjectExtension.swift
//  TableView
//
//  Created by Saanvi on 20/03/22.
//

import Foundation

extension NSObject {
    
    static var identifier: String {
        return String(describing: self)
    }
    
}
