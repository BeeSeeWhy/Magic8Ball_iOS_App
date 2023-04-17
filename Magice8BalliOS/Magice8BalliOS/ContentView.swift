//
//  ContentView.swift
//  Magice8BalliOS
//
//  Created by Brandon on 4/12/23.
//

import SwiftUI

struct ContentView: View {
  @State private var prediction = "8balllogo"
  
  let answers = [
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
  
  var body: some View {
    VStack {
      Image(prediction)
        
      Button(action: {
        self.prediction = self.answers.randomElement() ?? "Error"
      }) {
        Text("Ask a question")
          .font(.headline)
          .foregroundColor(Color("8ballblue"))
          .padding()
          .background(Color.white)
          .cornerRadius(10)
      }
        
      }
      .padding()
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .accentColor(Color.white)
      .background(Color.black)
      
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

