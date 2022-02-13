//
//  ContentView.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-11.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    let categories: [Category] = Bundle.main.decode("categories.json")
    @EnvironmentObject var readCategory: ReadCategory
    @State var categoryOption: CategoryFilterOptions = .following
    
    // MARK: - BODY
    var body: some View {
        ZStack {
          if readCategory.showingReadCategory == false && readCategory.selectedCategory == nil {
              VStack(spacing: 0) {
                  NavigationBarView(navigationBarViewType: .contentView)
                //  .padding(.horizontal, 15)
               // .padding(.bottom)
                  .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                  .background(Color.white)
                  .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                  
                  CategoryFilterButton(selectedOption: $categoryOption)
                      .padding()
                  
                
                ScrollView(.vertical, showsIndicators: false, content: {
                  VStack(spacing: 0) {
                    
                    LazyVGrid(columns: gridLayout, spacing: 0, content: {
                      ForEach(categories) { category in
                        CategoryItemView(category: category)
                          .onTapGesture {
                            feedback.impactOccurred()
                            
                            withAnimation(.easeOut) {
                                readCategory.fetchSelectedCategoryTopic(1)// use category id to get topic list
                              readCategory.showingReadCategory = true
                            }
                          }
                      } //: LOOP
                    }) //: GRID
                    
                  } //: VSTACK
                }) //: SCROLL
                
              } //: VSTACK
              .background(colorBackground.ignoresSafeArea(.all, edges: .all))
          } else {
              CategoryTopicsView().environmentObject(ReadDetailContent())
          }
        } //: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
        
      }
}


// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        ContentView()
            .environmentObject(ReadCategory())
    }
}
