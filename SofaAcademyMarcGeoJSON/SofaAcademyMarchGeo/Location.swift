//
//  Location.swift
//  SofaAcademyMarch3
//
//  Created by Luka Vukelić on 14.04.2022..
//

import Foundation

struct Location : Decodable {
    var title: String
    var latt_long: String
    init() {
        title = ""
        latt_long = ""
        }
}
