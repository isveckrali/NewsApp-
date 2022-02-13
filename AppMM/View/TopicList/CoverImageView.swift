//
//  CoverImageView.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-11.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - PROPERTIES
    var currentTopic: Topics
    
    //MARK: - BODY
    
    var body: some View {
        
        Image(currentTopic.coveredImageName)
            .resizable()
            .frame(height: 250)
            .scaledToFill()
            .clipped()
            .overlay(
                VStack {
                    Spacer()
                    Text("\(currentTopic.name)")
                        .bold()
                    Spacer()
                    ActionButtonView(isFollow: currentTopic.isFollowed)
                    Spacer()
                    Text(currentTopic.followersSize)
                    Spacer()
                }
            )
            
     
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView(currentTopic: topic[0])
            .previewLayout(.fixed(width: 400, height: 250))
    }
}
