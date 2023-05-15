//
//  Flip.swift
//  Magice8BalliOS
//
//  Created by Brandon on 4/24/23.
//

import Foundation
import SwiftUI

struct CardFlip:AnimatableModifier {
  private var rotationAngle: Double
  private var axis: (CGFloat, CGFloat, CGFloat)
  
  init(isFaceUp: Bool, axis:(CGFloat, CGFloat, CGFloat)) {
    rotationAngle = isFaceUp ? 0 : 180
    self.axis = axis
  }
  
  var animatableData: Double {
    get { rotationAngle }
    set { rotationAngle = newValue }
  }
  
  func body(content: Content) -> some View {
    ZStack {
      RoundedRectangle(cornerRadius: 20)
        .fill(rotationAngle < 90 ? Color.teal.opacity(1.0) : Color.black.opacity(1.0))
      content.opacity(1.0)
    }
    .rotation3DEffect(
      Angle.degrees(rotationAngle),
      axis: (self.axis),
      perspective: 0.3
    )
  }
}

extension View {
  func cardFlip(isFaceUp: Bool, axis: (CGFloat, CGFloat, CGFloat)) -> some View {
    modifier(CardFlip(isFaceUp: isFaceUp, axis: axis))
  }
}
