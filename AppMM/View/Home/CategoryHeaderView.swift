//
//  CoverHeaderView.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-11.
//

import SwiftUI

struct CategoryHeaderView: View {
    //MARK: - PROPERTY
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
          Text("Protective Gear")
          
          Text("shop.selectedProduct?.name")
            .font(.largeTitle)
            .fontWeight(.black)
        }) //: VSTACK
        .foregroundColor(.white)
    }
}

//MARK: - PREVIEW
struct CategoryHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHeaderView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
            
    }
}
