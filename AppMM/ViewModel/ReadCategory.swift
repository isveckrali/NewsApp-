//
//  File.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-12.
//

import Foundation


//Here works as ViewModel, It mean we manage business layer inside it
class ReadCategory: ObservableObject {
    @Published var showingReadCategory: Bool = false
    @Published var selectedCategory: Topics? // = nil
    
    /// get item inside list if user click a category to show content
    func fetchSelectedCategoryTopic(_ categoryId: Int) {
        if let item = topic.first(where: { $0.id == categoryId }) {
            selectedCategory = item
        }
    }
}
