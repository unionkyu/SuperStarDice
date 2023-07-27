//
//  ContentView.swift
//  SuperStarDice
//
//  Created by hyunkyu yoon on 2023/07/27.
//

import SwiftUI



struct ContentView: View {
  
  let diceData = [Image(systemName: "1.square.fill"),Image(systemName: "2.square.fill"),Image(systemName: "3.square.fill"),Image(systemName: "4.square.fill"),Image(systemName: "5.square.fill"),Image(systemName: "6.square.fill")]
  
  
  @State private var dice1: Image = Image(systemName: "1.square.fill")
  @State private var dice2: Image = Image(systemName: "1.square.fill")
  
  
  var body: some View {
    ZStack {
      LinearGradient(colors: [Color("BasePurple"),Color("BaseBlue")], startPoint: .topLeading, endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
      VStack(spacing: 20) {
        Spacer()
        
        VStack {
          Text("Super")
            .font(.largeTitle)
          Text("Star")
            .font(.largeTitle)
          Text("Dice")
            .font(.largeTitle)
        }
        .padding(30)
        
        Spacer()
        
        HStack(spacing: 40) {
          dice1
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 50, height: 50)
          dice2
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 50, height: 50)
        }
        .padding(30)
        .padding(.vertical, 30)
        
        Spacer()
        
        Button {
          dice1 = diceData.randomElement() ?? Image(systemName: "1.square.fill")
          dice2 = diceData.randomElement() ?? Image(systemName: "1.square.fill")
        } label: {
          Text("Roll")
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color("ButtonColor"))
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
        .shadow(radius: 12)
        .padding(.vertical, 40)
        
        
        
      }
      .padding()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
