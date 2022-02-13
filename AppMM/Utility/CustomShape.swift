//
//  CustomShape.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-11.
//


import SwiftUI

struct CustomShape: Shape {
    
  //MARK: -FUNC/BODY
  func path(in rect: CGRect) -> Path {
    let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
    
    return Path(path.cgPath)
  }
}


//MARK: PREVIEW
struct CustomShape_Previews: PreviewProvider {
  static var previews: some View {
    CustomShape()
      .previewLayout(.fixed(width: 428, height: 120))
      .padding()
  }
}
