//
//  CoverImageView.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-11.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - PROPERTIES
    
    var imageName: String = "Thumbnail_channel_Science"
    
    //MARK: - BODY
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .overlay(
                VStack {
                    Spacer()
                    Text("SCIENCE CHANNEL")
                        .bold()
                    Spacer()
                    ActionButtonView()
                    Spacer()
                    Text("234K Followers")
                    Spacer()
                }
            )
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
