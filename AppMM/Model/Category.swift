//
//  CoverImage.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-11.
//

import Foundation

struct CoverImage: Codable, Identifiable {
    let id: Int
    let image: String
    let text: String
}
