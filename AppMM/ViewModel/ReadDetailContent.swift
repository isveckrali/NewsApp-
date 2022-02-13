//
//  ReadDetailContent.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-13.
//

import Foundation

class ReadDetailContent: ObservableObject {
    
    //MARK: - PROPERTIES
    @Published var showingReadContent: Bool = false
    @Published var selectedContent: Detail? // = nil
    
    //MARK: -FUNCS
    /// get item inside list if user click a category to show content
    func fetchSelectedCListContent(_ contentId: Int) {
        if let item = detail.first(where: { $0.id == contentId }) {
            selectedContent = item
        }
    }
}
