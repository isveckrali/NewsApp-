//
//  ActionButtonView.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-11.
//

import SwiftUI

struct ActionButtonView: View {
    //MARK: - PROPERTIES
    var isFollow: Bool  = false
    
    // MARK: - BODY
    var body: some View {
        Button {
            
        } label: {
            Text(isFollow ? "Following" : "Follow")
                .frame(width: 200, height: 40)
                .background(colorPink)
                .foregroundColor(.white)
        }.cornerRadius(20)

    }
}

//MARK: - PREVIEW
struct ActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ActionButtonView()
    }
}
