//
//  MotivationView.swift
//  StudyUp
//
//  Created by Scholar on 6/11/24.
//

import SwiftUI
struct MotivationView: View {
  @State private var display = ""
  var quotes = [
    "Either you run the day, or the day runs you - Jim Rohn",
    "Our greatest weakness lies in giving up. The most certain way to succeed is always to try just one more time. -Thomas Edison",
    "Keep your face always toward the sunshine, and shadows will fall behind you - Walt Whitman",
    "Success is walking from failure to failure with no loss of enthusiasm - Winston Churchill",
    "We cannot become what we want by remaining what we are - Max Depree",
    "Out of the mountain of despair, a stone of hope - Martin Luther King Jr.",
    "Be so good they can’t ignore you - Steve Martin",
    "I never lose. Either I win or learn - Nelson Mandela",
    "Only do what your heart tells you - Princess Diana",
    "Failure is the opportunity to begin again more intelligently - Henry Ford",
    "What I want young women and girls to know is: You are powerful and your voice matters - Kamala Harris",
    "Her own thoughts and reflections were habitually her best companions - Jane Austen",
    "If you don’t risk anything, you risk even more - Erica Jong",
    "Don’t follow the crowd, let the crowd follow you - Margaret Thatcher",
    "Nothing can dim the light which shines from within - Maya Angelou",
    "I never dreamt of success. I worked for it. - Estee Lauder",
    "The most effective way to do it, is to do it - Amelia Earhart"
  ]
  var body: some View {
    ZStack {
      Color(Color(red: 0.421, green: 0.565, blue: 0.502))
        .ignoresSafeArea()
      VStack {
        Text("Get Inspired")
          .font(.custom("SignPainter", fixedSize: 50))
          .foregroundStyle(.white)
        Spacer()
          .frame(height: 40.0)
        Text("There's power in words. ")
        var quote = quotes.randomElement()!
        Button("Generate a quote!") {
          display = quote
        }
        .padding()
        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
        .foregroundColor(.white)
        Text(display)
          .multilineTextAlignment(.center)
          .padding()
          .foregroundColor(.white)
        Text("Motivational quotes have a unique ability to ignite a spark within us, guiding our thoughts towards positivity and resilience. It serves as a beacon of inspiration, empowering us to overcome obstacles, stay focused on our goals, and cultivate a mindset for success. By immersing ourselves in their uplifting messages, we harness the transformative power of optimism, elevating our mood, enhancing concentration, and ultimately fostering greater levels of happiness and fulfillment in our lives")
          .multilineTextAlignment(.center)
          .padding()
          .padding()
          .foregroundColor(.white)
          .background(Color(red: 0.574, green: 0.617, blue: 0.622))
          .cornerRadius(15)
          .padding()
      }
    }
  }
}


#Preview {
    MotivationView()
}
