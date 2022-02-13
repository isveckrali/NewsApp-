//
//  NavigationBarView.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-12.
//

import SwiftUI

enum NavigationBarViewType {
case contentView
case topicList
case detailView
}

struct NavigationBarView: View {
  // MARK: - PROPERTY
  @State private var isAnimated: Bool = false
  @EnvironmentObject var readCategory: ReadCategory
  @EnvironmentObject var readContent: ReadDetailContent
  var navigationBarViewType: NavigationBarViewType = .detailView
  
  // MARK: - BODY
  var body: some View {
    HStack {
        Button {
                        
            withAnimation(.easeIn) {
                feedback.impactOccurred()
                if navigationBarViewType == .topicList {
                    readCategory.showingReadCategory = false
                    readCategory.selectedCategory = nil
                } else {
                    readContent.showingReadContent = false
                    readContent.selectedContent = nil
                }
                
            } //: ANIMATION
            
        } label: {
            Image(systemName: navigationBarViewType == .topicList ? "chevron.backward" : "xmark")
                .foregroundColor(.white)
        }
        .opacity(navigationBarViewType == .contentView ? 0: 1)
        .padding()
        
        Spacer()
      
        if navigationBarViewType == .detailView {
            Text("SCIENCE CHANNEL")
                .bold()
                .padding()
        } else {
            LogoView()
              .opacity(isAnimated ? 1 : 0)
              .offset(x: 0, y: isAnimated ? 0 : -25)
              .onAppear(perform: {
                withAnimation(.easeOut(duration: 0.5)) {
                  isAnimated.toggle()
                }
              })
        }
      
      
      Spacer()
        
        Circle()
            .frame(width: 50, height: 50)
            .opacity(0)
        
      
    } //: HSTACK
    .background(colorPurple)
    .zIndex(1)
      
  }
}

// MARK: - PREVIEW

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView(navigationBarViewType: .topicList)
            .environmentObject(ReadDetailContent())
            .environmentObject(ReadCategory())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
