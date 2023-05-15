//
//  ContentView.swift
//  Magice8BalliOS
//
//  Created by Brandon on 4/12/23.
//

import SwiftUI

struct ContentView: View {
  @State var isFaceUp = false
  @State var imageIndex = 0
  @State var dirIndex = 0
  
  let images = [
    "8balllogo",
    "answer1",
    "answer2",
    "answer3",
    "answer4",
    "answer5",
    "answer6",
    "answer7",
    "answer8",
    "answer9",
    "answer10",
    "answer11",
    "answer12",
    "answer13",
    "answer14",
    "answer15",
    "answer16",
    "answer17",
    "answer18",
    "answer19",
    "answer20"
  ]
  let directions: [(CGFloat, CGFloat, CGFloat)] = [(0,1,0), (1,0,0), (0,0,1)]
  
  private func flip() {
    if !isFaceUp {
      imageIndex = Int.random(in: 1...images.count - 1)
      dirIndex = Int.random(in: 0...directions.count - 1)
    } else {
      imageIndex = 0
      dirIndex = Int.random(in: 0...directions.count - 1)
    }
    isFaceUp.toggle()
  }
  
  var body: some View {
    VStack {
      Spacer().frame(height:80)
        
      VStack(spacing: 50) {
        CardView(isFaceUp: isFaceUp,
                 imageName: images[imageIndex],
                 axis: directions[dirIndex])
        Button( isFaceUp ? "Reset" : "Ask A Question") {
          withAnimation(.easeInOut(duration: 1.0)) {
            flip()
          }
        }
      }
      Spacer()
      }
    .accentColor(Color.white)
    .background(Color.black)
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

