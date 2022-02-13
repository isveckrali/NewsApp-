//
//  Topic.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-11.
//

import Foundation

struct Topics: Codable, Identifiable {
    let id: Int
    let name: String
    let isFollowed: Bool
    let followersSize: String
    let coveredImageName: String
    let list: [TopicList]
}

struct TopicList: Codable, Identifiable {
    let id: Int
    let title: String
    let chanel: String
    let date: String
}
