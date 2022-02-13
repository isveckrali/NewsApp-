//
//  SingInfoView.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-12.
//

import SwiftUI

enum SingInfoViewType {
case topicList
case detailView
}

struct SingInfoView: View {
    //MARK: PROPERTIES
    var singInfoViewType: SingInfoViewType = .detailView
    var chanelName: String = "CNN"
    var date: String = "Apr 3, 2015"
    var categoryName: String = "SCIENCE"
    
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center) {
            Image("icon_list_source")
            Text(chanelName)
                .padding(.trailing, 16)
                .foregroundColor(Color(UIColor.systemGray6))
            
            Image("icon_list_time")
            Text(date)
                .foregroundColor(Color(UIColor.systemGray6))
            
            Spacer()
            
            Text(categoryName)
                .foregroundColor(Color(UIColor.systemGray6))
                .padding()
                .border(.gray)
                .opacity(singInfoViewType == .topicList ? 0: 1)
                .frame(width: 120, height: 35)
                .clipped()
                        
        } //: HSTACK
        .background(.white)
        
    }
}


//MARK: - PREVIEW
struct SingInfoView_Previews: PreviewProvider {
    static var previews: some View {
        SingInfoView()
    }
}
