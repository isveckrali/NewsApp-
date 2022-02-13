//
//  ReadCategory.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-12.
//

import Foundation


/// Here works as ViewModel, Which mean we manage the business layer here
class ReadCategory: ObservableObject {
    //MARK: - PROPERTIES
    @Published var showingReadCategory: Bool = false
    @Published var selectedCategory: Topics? // = nil
    
    //MARK: - FUNCS
    /// get item inside list if user click a category to show content
    func fetchSelectedCategoryTopic(_ categoryId: Int) {
        if let item = topic.first(where: { $0.id == categoryId }) {
            selectedCategory = item
        }
    }
    
    /// Change list type by filter
    func filterCategory(_ filterType: CategoryFilterOptions) {
        print("DEBUG: ReadCategory FilterCategory filterType \(filterType.title)")
    }
}
