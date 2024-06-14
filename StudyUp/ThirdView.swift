//
//  ThirdView.swift
//  StudyUp
//
//  Created by Scholar on 6/12/24.
//

import SwiftUI
struct ThirdView: View {
  @State private var duration = "---"
  @State private var timeUp = false
  @State private var isTimerPaused = false
  @State private var pausedTime: Date?
  @State private var remainingTime: TimeInterval = 0
  @State private var desiredDuration = Calendar.current.date(byAdding: .minute, value: 35, to: Date())!
  @State private var timer = Timer.TimerPublisher(interval: 1, runLoop: .main, mode: .common).autoconnect()
  static var durationFormatter: DateComponentsFormatter = {
    let formatter = DateComponentsFormatter()
    formatter.allowedUnits = [.hour, .minute, .second]
    formatter.unitsStyle = .abbreviated
    formatter.zeroFormattingBehavior = .dropLeading
    return formatter
  }()
  var body: some View {
    NavigationView {
      ZStack {
        Color(red: 107/255, green: 144/255, blue: 128/255)
          .ignoresSafeArea()
        VStack {
          Text("Welcome to the 35 ")
            .font(.largeTitle)
          Text("Minute Timer!! ")
            .font(.largeTitle)
          Spacer().frame(width: 1.0, height: 13.0)
          Text("Time to lock in!🔒")
            .font(.title3)
            .foregroundColor(Color(red: 0.874, green: 0.617, blue: 0.622))
          Spacer().frame(height: 50.0)
          HStack(spacing: 12) {
            Spacer()
            Text(duration)
              .font(.system(size: 20, weight: .bold))
              .padding()
              .foregroundStyle(Color.black)
              .background(Color.green)
              .opacity(0.3)
              .cornerRadius(15)
            Spacer()
          }
          .frame(width: 300, height: 34)
          Spacer().frame(height: 50.0)
            NavigationLink(destination: ToDoList()) {
                Text("You can click here to access your to do list!!✅")
                  .font(.title3)
                  .foregroundColor(Color(red: 0.874, green: 0.617, blue: 0.622))
                  .multilineTextAlignment(.center)
                  .padding()
                }
                NavigationLink(destination: ResourcesView()) {
                    Text("You can click here to access your resources!!✚")
                      .font(.title3)
                      .foregroundColor(Color(red: 0.874, green: 0.617, blue: 0.622))
                      .multilineTextAlignment(.center)
                      .padding()
                    }
          Button(action: {
            toggleTimer()
          }) {
            Text(isTimerPaused ? "Resume" : "Pause")
              .font(.title3)
              .foregroundColor(.black)
              .padding()
              .background(Color.green)
              .opacity(0.3)
              .cornerRadius(15)
          }
          .padding(.bottom, 20)
        }
        .background(Rectangle().foregroundColor(.white))
        .cornerRadius(15)
        .padding(.all, 25.0)
      }
      .onReceive(timer) { _ in
        updateTimer()
      }
      .onAppear {
        startTimer()
      }
    }
  }
  private func toggleTimer() {
    if isTimerPaused {
      startTimer()
    } else {
      pauseTimer()
    }
    isTimerPaused.toggle()
  }
  private func startTimer() {
    if pausedTime != nil {
      let timeInterval = Date().timeIntervalSince(pausedTime!)
      remainingTime -= timeInterval
      pausedTime = nil
    }
  }
  private func pauseTimer() {
    pausedTime = Date()
  }
  private func updateTimer() {
    if !isTimerPaused {
      var delta = desiredDuration.timeIntervalSince(Date()) - remainingTime
      if delta <= 0 {
        delta = 0
        timeUp = true
      }
      duration = FourthView.durationFormatter.string(from: delta) ?? "---"
    }
  }
}
struct ThirdView_Previews: PreviewProvider {
  static var previews: some View {
    ThirdView()
  }
} 
