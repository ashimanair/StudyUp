//
// MusicView.swift
// MusicPlayerApp
//
// Created by Scholar on 6/13/24.
//

import SwiftUI
import AVKit
extension Color {
  static let mintGreen = Color(red: 204/255, green: 227/255, blue: 222/255)
  static let darkPink = Color(red: 0.874, green: 0.617, blue: 0.622)
}
struct MusicView: View{
  @State var audioPlayer:AVAudioPlayer!
  @State var count = 1
  var body: some View {
    ZStack{
      Color(red: 204/255, green: 227/255, blue: 222/255)
        .ignoresSafeArea()
      VStack{
        VStack{
          Image("lofi")
            .cornerRadius(20)
          HStack{
            Text("Music Player")
              .font(.system(size: 45))
              .fontWeight(.bold)
              .foregroundStyle(Color.darkPink)
          }
        }
        HStack{
          Spacer()
          Button(action: {self.audioPlayer.play()
          }) {
            Image(systemName: "play.circle.fill")
              .resizable()
              .frame(width: 50, height: 50)
              .aspectRatio(contentMode: .fit)
              .foregroundColor(Color(red: 107/255, green: 144/255, blue: 128/255))
          }
          Spacer()
          Button(action: {self.audioPlayer.pause()
          }) {
            Image(systemName: "pause.circle.fill")
              .resizable()
              .frame(width: 50, height: 50)
              .aspectRatio(contentMode: .fit)
              .foregroundColor(Color(red: 107/255, green: 144/255, blue: 128/255))
          }
          Spacer()
          Button(action: {
            if (self.count < 17){
              self.count += 1
            }
            else {
              self.count = 1
            }
              let sound = Bundle.main.path(forResource: "song\(self.count)", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL (fileURLWithPath : sound!))
            self.audioPlayer.play()
          }){
            Image(systemName: "forward.end.fill")
              .resizable()
              .frame(width: 45, height: 45)
              .aspectRatio(contentMode: .fit)
              .foregroundColor(Color(red: 107/255, green: 144/255, blue: 128/255))
          }
          Spacer()
        }
      }
    }
    .onAppear{
      let sound = Bundle.main.path(forResource: "song1", ofType: "mp3")
      self.audioPlayer = try! AVAudioPlayer(contentsOf: URL (fileURLWithPath : sound!))
    }
  }
}
struct ContentView_Previews: PreviewProvider{
  static var previews: some View {
    MusicView()
  }
}
