//
// ContentView.swift
// GameHomePage
//
// Created by Scholar on 6/12/24.
//
import SwiftUI
struct GamesView: View {
  var body: some View {
      NavigationStack {
      ZStack {
        Color(red: 107/255, green: 144/255, blue: 128/255)
          .ignoresSafeArea()
        VStack {
          Text("Games!")
            .font(.largeTitle)
            .frame(width: 200.0, height: 500.0)
            .position(CGPoint(x: 200, y: 50))
            .foregroundColor(.white)
          Text("Take a break and enjoy some non-stimulating games!")
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .font(.title2)
            .position(CGPoint(x: 200, y: -10))
            .foregroundColor(.white)
          Text("Be sure to take care of yourself during your breaks, give youself a mental reset, and allow your brain to recharge!")
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .font(.title2)
            .position(CGPoint(x: 200, y: -30))
            .foregroundColor(.white)
          NavigationLink(destination: Game1())
          {
            Image("word")
              .resizable(resizingMode: .stretch)
              .aspectRatio(contentMode: .fit)
              .foregroundColor(.white)
              .cornerRadius(10)
          }
          .frame(width: 200, height: 120)
          .padding()
          .position(CGPoint(x: 200, y: -30))
          NavigationLink(destination: Game2())
          {
            Image("tic")
              .resizable(resizingMode: .stretch)
              .aspectRatio(contentMode: .fit)
              .foregroundColor(.white)
              .cornerRadius(10)
          }
          .frame(width: 200, height: 120)
          .padding()
          .position(CGPoint(x: 200, y: -50))
//          NavigationLink(destination: Game3())
//          {
//            Text("<Name of Game 3>")
//              .foregroundColor(.white)
//
//          }
//          .padding()
//          .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
//          .position(CGPoint(x: 200, y: -170))
        }
      }
    }
  }
}
#Preview {
  GamesView()
}
