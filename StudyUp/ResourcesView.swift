//
//  ResourcesView.swift
//  StudyUp
//
//  Created by Scholar on 6/11/24.
//

import SwiftUI

struct ResourcesView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
            ZStack {
            Color(red: 204/255, green: 227/255, blue: 222/255)
                .ignoresSafeArea()
//                ScrollView{
            // user can scroll on screen
                VStack(alignment: .center, spacing: 20.0) {
                    
                    // title
                    Text("Resources")
                        .font(.system(size: 25))
                        .fontWeight(.black)
                        .foregroundColor(Color.black)
                    // desmos
                    Image("desmos2")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150.0, height: 150.0)
                        .cornerRadius(50)
                    Link("Graphing Calculator", destination: URL(string: "https://www.desmos.com/calculator")!)
                        .buttonStyle(.borderedProminent)
                        .cornerRadius(25)
                        .tint(Color(hue: 0.414, saturation: 0.291, brightness: 0.569))
                        .padding()
                    // quizlet
                    Image("quizletLogo")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 153.0, height: 150.0)
                        .cornerRadius(50)
                    Link("Quizlet", destination: URL(string: "https://quizlet.com/")!)
                        .buttonStyle(.borderedProminent)
                        .cornerRadius(25)
                        .tint(Color(hue: 0.564, saturation: 0.384, brightness: 0.582))
                        .padding()
                    //study tips
                    Image("studybooks2")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150.0, height: 150.0)
                        .cornerRadius(50)
                    Link("Study Tips", destination: URL(string: "https://summer.harvard.edu/blog/top-10-study-tips-to-study-like-a-harvard-student/")!)
                        .buttonStyle(.borderedProminent)
                        .cornerRadius(25)
                        .tint(Color(hue: 0.79, saturation: 0.239, brightness: 0.64))
                        .padding()
                    
                    
                    // resources title to top
                    Spacer()
                }
                .padding()
                //.scrollIndicatorInsets={{ right: 1 }}
            }
            /* .background(Rectangle()
                      .foregroundColor(.white))
                    .cornerRadius(15)
                    .padding(.all, 5.0) */
 }
.navigationBarHidden(true)


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
ResourcesView()
}


