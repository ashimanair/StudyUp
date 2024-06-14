//
//  ContentView.swift
//  StudyUp
//
//  Created by Scholar on 6/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
           ZStack{
            Color(Color(red: 0.686, green: 0.751, blue: 0.451))
    
            .ignoresSafeArea()
               Image("background")
                   .resizable(resizingMode: .stretch)
                   .aspectRatio(contentMode: .fill)
                   // .opacity(0.5)
                   
            VStack{
             VStack{
              HStack(alignment: .top){
               Text("Welcome, Ananya!")
                .underline()
                .fontWeight(.semibold)
                .position(x:75,y:40)
               Text("120 Points")
                .underline()
                .fontWeight(.semibold)
                .position(x:135,y:40)
              
              }
              //.padding()
                 Spacer()
                     .frame(width: 100.0, height: 72.0)
              Text("STUDY UP!")
               .font(.custom("Didot",size: 52))
               .padding()
               .fontWeight(.heavy)
               .padding()
               .multilineTextAlignment(.center)
               // .position(x:170, y:-10)

             }
             .padding()
              
             HStack{
              NavigationLink(destination: TimerView()) {
               Text("Timer")
                .padding()
                .background(Color(red: 0.918, green: 0.958, blue: 0.957))
                .cornerRadius(15)
                .foregroundColor(.black)
                .font(.system(size:26))
              }
              .position(x:190, y:80)
               
             }
                HStack {
                    HStack{
                        NavigationLink(destination: GamesView()) {
                            Text("Games")
                                .padding()
                                .background(Color(red: 0.918, green: 0.958, blue: 0.957))
                                .cornerRadius(15)
                                .foregroundColor(.black)
                                .font(.system(size:26))
                        }
                        
                        .padding()
                        NavigationLink(destination: MotivationView()) {
                            Text("Motivation")
                                .padding()
                                .background(Color(red: 0.918, green: 0.958, blue: 0.957))
                                .cornerRadius(15)
                                .foregroundColor(.black)
                                .font(.system(size:26))
                        }
                    }
                    .position(x:195, y:40)
                }
             
              
             HStack{
              NavigationLink(destination: MusicView()) {
               Text("Music")
                .padding()
                .background(Color(red: 0.918, green: 0.958, blue: 0.957))
                .cornerRadius(15)
                .foregroundColor(.black)
                .font(.system(size:26))
              }
              .padding()
              NavigationLink(destination: ResourcesView()) {
               Text("Resources")
                .padding()
                .background(Color(red: 0.918, green: 0.958, blue: 0.957))
                .cornerRadius(15)
                .foregroundColor(.black)
                .font(.system(size:26))
              }
             }
             .position(x:185, y:0)
              
             HStack{
                 NavigationLink(destination: ToDoList()) {
                     Text("To-Do List")
                         .padding()
                         .background(Color(red: 0.918, green: 0.958, blue: 0.957))
                         .cornerRadius(15)
                         .foregroundColor(.black)
                         .font(.system(size:26))
                 }
              NavigationLink(destination: AboutUsView()) {
               Text("About Us!")
                .padding()
                .background(Color(red: 0.918, green: 0.958, blue: 0.957))
                .cornerRadius(15)
                .foregroundColor(.black)
                .font(.system(size:26))
              }
             
             }
             .position(x: 205, y:-45)
                Spacer()
                    .frame(height: 85.0)
            }
               
             
           }
          }
    }
}

#Preview {
    ContentView()
}
