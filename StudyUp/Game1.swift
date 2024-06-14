//
// Game1.swift
// GameHomePage
//
// Created by Scholar on 6/12/24.
//
import SwiftUI
//button
struct BlueButton: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .padding()
      .background(Color(red: 0.5, green: 0.517, blue: 0.522))
    //0.874
      .foregroundStyle(.white)
      .clipShape(Capsule())
  }
}
struct Game1: View {
  @State private var Q1Answer = ""
  @State private var Q1Output = ""
  @State private var Q2Answer = ""
  @State private var Q2Output = ""
  @State private var Q3Answer = ""
  @State private var Q3Output = ""
  @State private var Q4Answer = ""
  @State private var Q4Output = ""
  @State private var Q5Answer = ""
  @State private var Q5Output = ""
  var body: some View {
    NavigationStack {
      ZStack {
        Color(red: 107/255, green: 144/255, blue: 128/255)
          .ignoresSafeArea()
        ScrollView {
          //First question
          VStack {
            //first question
            Spacer()
              .frame(height: 50.0)
            Text("Welcome to Word Unscrambler!")
              .font(.title)
              .multilineTextAlignment(.center)
              .padding()
              .foregroundColor(.white)
            Text("Decode the scrambled letters! Type in your answers and press submit to check if your answers are correct!")
              .multilineTextAlignment(.center)
              .foregroundColor(.white)
              .padding(.horizontal)
            Spacer()
              .frame(height: 40.0)
            //first question
            HStack {
              Text("V")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("L")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("0")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("G")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("E")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
            }
            TextField("Enter your answer", text: $Q1Answer)
              .multilineTextAlignment(.center)
              .font(.title)
              .padding()
            Text("________________________")
              .position(CGPoint(x: 200, y: -25))
              .foregroundColor(.white)
            Button("Submit Answer") {
              if(Q1Answer == "glove" || Q1Answer == "Glove") {
                Q1Output = "Correct!"
              }
              else {
                Q1Output = "Incorrect!"
              }
            }
            .buttonStyle(BlueButton())
            .position(CGPoint(x: 200, y: -5))
            Text(Q1Output)
            Spacer()
              .frame(height: 30.0)
          }
          //Second question
          VStack {
            HStack {
              Text("G")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("N")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("A")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("I")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("L")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
            }
          TextField("Enter your answer", text: $Q2Answer)
            .multilineTextAlignment(.center)
            .font(.title)
            .padding()
          Text("________________________")
              .foregroundColor(.white)
              .position(CGPoint(x: 200, y: -25))
          Button("Submit Answer") {
            if(Q2Answer == "align" || Q2Answer == "Align") {
              Q2Output = "Correct"
            }
            else {
              Q2Output = "Incorrect"
            }
          }
          .buttonStyle(BlueButton())
          .position(CGPoint(x: 200, y: -5))
          Text(Q2Output)
        }
          Spacer()
            .frame(height: 30.0)
          //third question
          VStack {
            HStack {
              Text("T")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("C")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("O")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("R")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("H")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
            }
          TextField("Enter your answer", text: $Q3Answer)
            .multilineTextAlignment(.center)
            .font(.title)
            .padding()
            Text("________________________")
                .foregroundColor(.white)
                .position(CGPoint(x: 200, y: -25))
          Button("Submit Answer") {
            if(Q3Answer == "torch" || Q3Answer == "Torch") {
              Q3Output = "Correct"
            }
            else {
              Q3Output = "Incorrect"
            }
          }
          .buttonStyle(BlueButton())
          .position(CGPoint(x: 200, y: -5))
          }
          Text(Q3Output)
          Spacer()
            .frame(height: 70.0)
          //fourth question
          VStack {
            HStack {
              Text("N")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("A")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("D")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("E")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("R")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("W")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
            }
          TextField("Enter your answer", text: $Q4Answer)
            .multilineTextAlignment(.center)
            .font(.title)
            .padding()
            Text("________________________")
                .foregroundColor(.white)
                .position(CGPoint(x: 200, y: -25))
          Button("Submit Answer") {
            if(Q4Answer == "wander" || Q4Answer == "Wander") {
              Q4Output = "Correct"
            }
            else {
              Q4Output = "Incorrect"
            }
          }
          .buttonStyle(BlueButton())
          .position(CGPoint(x: 200, y: -5))
          }
          Text(Q4Output)
          Spacer()
            .frame(height: 70.0)
          //fifth question
          VStack {
            HStack {
              Text("R")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("U")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("G")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("A")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("I")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
              Text("T")
                .padding()
                .border(Color.white)
                .foregroundColor(.white)
            }
          TextField("Enter your answer", text: $Q5Answer)
            .multilineTextAlignment(.center)
            .font(.title)
            .padding()
            Text("________________________")
                .foregroundColor(.white)
                .position(CGPoint(x: 200, y: -25))
          Button("Submit Answer") {
            if(Q5Answer == "guitar" || Q5Answer == "Guitar") {
              Q5Output = "Correct"
            }
            else {
              Q5Output = "Incorrect"
            }
          }
          .buttonStyle(BlueButton())
          .position(CGPoint(x: 200, y: -5))
          }
          Text(Q5Output)
        }
      }
      //menu bar
      Menu("Menu") {
        NavigationLink(destination: ContentView()) {
          Text("Home")
        }
        NavigationLink(destination: TimerView()){
          Text("Timer")
        }
        NavigationLink(destination: MotivationView()){
          Text("Motivation")
        }
        NavigationLink(destination: ResourcesView()){
          Text("Resources")
        }
        NavigationLink(destination: MusicView()){
          Text("Music")
        }
        NavigationLink(destination: AboutUsView()){
          Text("About Us")
        }

      }
      .foregroundColor(.black)
        
    }
  }
}
#Preview {
  Game1()
}
