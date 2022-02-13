//
//  ActionButtonView.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-11.
//

import SwiftUI

struct ActionButtonView: View {
    
    
    // MARK: - BODY
    var body: some View {
        Button {
            
        } label: {
            Text("Following")
                .frame(width: 260, height: 40)
                .background(colorPink)
                .foregroundColor(.white)
        }.cornerRadius(20)

    }
}

struct ActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ActionButtonView()
    }
}
