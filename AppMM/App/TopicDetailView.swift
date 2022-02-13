//
//  TopicDetailView.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-13.
//

import SwiftUI

/// With GeometryReader we can keep sticky header for first headrline. It makes better
struct TopicDetailView: View {
    
    //MARK: - PROPERTIES
    @State var closeScreen: Bool = false
    var topicDetail: Detail
    
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 0) {
            NavigationBarView(navigationBarViewType: .detailView)
            // .padding(.horizontal, 15)
            // .padding(.bottom)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
            
            ScrollView {
                VStack {
                    DetailHeaderView(imageName: topicDetail.coverImage, text: topicDetail.firstHead)
                    SingInfoView(singInfoViewType: .detailView, chanelName: topicDetail.chanel, date: topicDetail.date, categoryName: topicDetail.category)
                        .padding()
                    
                    Text(topicDetail.firstDesc)
                        .foregroundColor(.gray)
                        .padding()
                    
                    
                    Text(topicDetail.secondHead)
                        .bold()
                        .foregroundColor(.black)
                        .padding()
                    
                    Text(topicDetail.secondDesc)
                        .foregroundColor(.gray)
                        .padding()
                    
                } //: VSTAKC
                
            }//: SCROLLVIEW
            
            
            Spacer()
        }
        .background(.white)
        .ignoresSafeArea(.all, edges: .all)
        
    }
}


//MARK: - PREVIEW
struct TopicDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopicDetailView(topicDetail: detail[0])
    }
}
