//
//  UserModel.swift
//  TableView
//
//  Created by Webappclouds on 17/11/22.
//

import Foundation

struct UserModel {
    let titleStr: String?
}

struct UserModelData {
    static let userModelDataArr: [UserModel] = [
        UserModel(titleStr: "Srikanth"),
        UserModel(titleStr: "Sagarika"),
        UserModel(titleStr: "Saanvi"),
        UserModel(titleStr: "RaviShekar"),
        UserModel(titleStr: "Sujatha"),
        UserModel(titleStr: "Bairaiah")
    ]
}
