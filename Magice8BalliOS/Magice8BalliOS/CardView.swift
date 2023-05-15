//
//  CardView.swift
//  Magice8BalliOS
//
//  Created by Brandon on 5/15/23.
//

import Foundation
import SwiftUI

struct CardView:View {
  var isFaceUp: Bool
  var imageName = "8balllogo"
  var axis:(CGFloat, CGFloat, CGFloat) = (1.0, 0.0, 1.0)
  
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 20)
        .fill(Color.black)
        .shadow(radius: 5)
      Image(imageName)
        .resizable()
        .scaledToFit()
        .clipped()
        .cornerRadius(15.0)
        .padding(10)
    }
    .cardFlip(isFaceUp: isFaceUp, axis: axis)
  }
}
