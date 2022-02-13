//
//  DetailHeaderView.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-13.
//

import SwiftUI

struct DetailHeaderView: View {
    //MARK: - PROPERTIES
    
    var imageName: String = "Thumbnail_channel_Science"
    var text: String = "Artic sea ice extent hits record low for winter maximum"
    
    //MARK: - BODY
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 300)
                .clipped()
         
            Text(text)
                .bold()
                .padding()
        }//: ZSTACK
    }
}

//MARK: - PREVIEW
struct DetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeaderView()
    }
}
