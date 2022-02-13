//
//  CoverItemView.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-11.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - PROPERTY
    let category: Category
    
    // MARK: - BODY
    var body: some View {
        
        ZStack(alignment: .bottomLeading) {
              
            // PHOTO
            Image(category.image)
              .resizable()
              .scaledToFill()
              
              // NAME
              Text(category.text)
                .font(.title3)
                .fontWeight(.black)
                .padding()
              
          } //: ZSTACK
          .background(.white)

    }
}

// MARK: - PREVIEW

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: sampleCategory)
            .previewLayout(.fixed(width: 300, height: 300))
            .padding()
            .background(.white)
    }
}
