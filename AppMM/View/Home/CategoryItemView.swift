//
//  CoverItemView.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-11.
//

import SwiftUI

struct CoverItemView: View {
    // MARK: - PROPERTY
    let cover: Category
    
    // MARK: - BODY
    var body: some View {
        
        ZStack(alignment: .bottomLeading) {
              
            // PHOTO
            Image(cover.image)
              .resizable()
              .scaledToFill()
              
              // NAME
              Text(cover.text)
                .font(.title3)
                .fontWeight(.black)
                .padding()
              
          } //: ZSTACK
          .background(.white)

    }
}

// MARK: - PREVIEW

struct CoverItemView_Previews: PreviewProvider {
    static var previews: some View {
        CoverItemView(cover: sampleCategoty)
            .previewLayout(.fixed(width: 300, height: 300))
            .padding()
            .background(.white)
    }
}
