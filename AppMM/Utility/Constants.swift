//
//  Constants.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-11.
//

import Foundation
import SwiftUI

// DATA

let categories: [Category] = Bundle.main.decode("categories.json")
let topic: [Topics] = Bundle.main.decode("topic.json")
let detail: [Detail] = Bundle.main.decode("detail.json")

let sampleCategory: Category = categories[0]

// COLOR

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)
let colorPink: Color = Color("ColorPink")
let colorPurple: Color = Color("ColorPurple")

// LAYOUT

let columnSpacing: CGFloat = 0
let rowSpacing: CGFloat = 00
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// UX

let feedback = UIImpactFeedbackGenerator(style: .medium)

// FONT
