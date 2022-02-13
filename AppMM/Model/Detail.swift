//
//  Detail.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-11.
//

import Foundation

struct Detail: Codable, Identifiable {
    let id: Int
    let coverImage: String
    let firstHead: String
    let chanel: String
    let date: String
    let category: String
    let firstDesc: String
    let secondHead: String
    let secondDesc: String
}
