//
//  LaunchScreen.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-13.
//

import SwiftUI


// I used ready tool to show splach screen but however It is possible to use this screen to
struct LaunchScreen: View {
    //MARK: - PROPERTIES
    @State var showContentView: Bool = false
    
    //MARK: - BODY
    var body: some View {
        
        Image("bg")
            .resizable()
            .scaledToFill()
            .clipped()
            .overlay(
                Image("splash_logo")
                    .resizable()
                    .clipped()
                    .scaledToFit()
                    .frame(width: 200, height: 250, alignment: .center)
                
            )
            .ignoresSafeArea(.all, edges: .all)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    self.showContentView = true
                }
            }
            .fullScreenCover(isPresented: $showContentView) {
                withAnimation {
                    ContentView().environmentObject(ReadCategory())
                }
            }
    }
}


//MARK: - PREVIEW
struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
