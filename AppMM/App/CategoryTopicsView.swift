//
//  CategoryTopicsView.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-12.
//

import SwiftUI

struct CategoryTopicsView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var readContent: ReadDetailContent
    @EnvironmentObject var readCategory: ReadCategory
    @State private var isAnimating: Bool = false
    @State var isOpenNextScreen: Bool = false

    
    // MARK: - BODY
    var body: some View {
        
        ZStack {
            if readContent.showingReadContent == false && readContent.selectedContent == nil {
                
                VStack(spacing: 0) {
                    NavigationBarView(navigationBarViewType: .topicList)
                    // .padding(.horizontal, 15)
                    // .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    ScrollView {
                        VStack {
                            CoverImageView(currentTopic: topic[0])
                                .offset(y: isAnimating ? 0 : -35)
                            ForEach(topic[0].list) { item in
                                TopicListItemView(topicList: topic[0].list[0])
                                    .onTapGesture {
                                        feedback.impactOccurred()
                                        withAnimation(.easeOut) {
                                            withAnimation(.easeOut) {
                                                readContent.fetchSelectedCListContent(1) // add item id
                                                readContent.showingReadContent = true
                                            }
                                        }
                                    }
                                
                            } //: LOOP
                        }//: VSTAKC
                        
                    } //: SCROLLVIEW
                    
                    Spacer()
                }//: VSTAKC
                .ignoresSafeArea(.all, edges: .top)
                .background(.white)
                .onAppear {
                    if !isOpenNextScreen {
                        withAnimation(.easeOut(duration: 0.75)) {
                                isAnimating.toggle()
                              }
                    }
                }
                .onDisappear {
                    self.isOpenNextScreen = true
                }
                
                
            } else {
                TopicDetailView(topicDetail: detail[0])
                
            }
        }//: ZSTAKC
        
    }
}


//MARK: - PREVIEW
struct CategoryTopicsView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryTopicsView()
            .environmentObject(ReadDetailContent())
            .environmentObject(ReadCategory())
.previewInterfaceOrientation(.portrait)
    }
}
