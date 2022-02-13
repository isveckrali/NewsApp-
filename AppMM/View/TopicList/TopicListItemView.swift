//
//  TopicListItemView.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-11.
//

import SwiftUI


struct TopicListItemView: View {
    //MARK: - PROPERTIES
    var topicList: TopicList
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading) {
            Text(topicList.title)
                .bold()
                .foregroundColor(Color.black)
            SingInfoView(singInfoViewType: .topicList, chanelName: topicList.chanel, date: topicList.date, categoryName: "")
        
            Divider()
        } //: VSTACK
        .padding()
        .background(Color.white)
    }
}

// MARK: - PREVIEW
struct TopicListItemView_Previews: PreviewProvider {
    static var previews: some View {
        TopicListItemView(topicList: topic[0].list[0])
.previewInterfaceOrientation(.portrait)
    }
}
