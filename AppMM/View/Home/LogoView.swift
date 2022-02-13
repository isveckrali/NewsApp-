//
//  LogoView.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-11.
//

import SwiftUI

struct LogoView: View {
    
    // MARK: - BODY
    var body: some View {
        HStack(spacing: 4){
            Image("Icon_navbar_Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
        } //: HSTACK
    }
}


// MARK: - PREVIEW
struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
