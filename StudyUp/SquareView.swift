//
//  SquareView.swift
//  StudyUp
//
//  Created by Scholar on 6/13/24.
//

import Foundation
import SwiftUI
enum SquareStatus {
  case empty
  case home
  case visitor
}
class Square : ObservableObject {
  @Published var squareStatus : SquareStatus
  init(status : SquareStatus) {
    self.squareStatus = status
  }
}
struct SquareView : View {
  @ObservedObject var dataSource : Square
  var action: () -> Void
  var body: some View {
    Button(action: {
      self.action()
    }, label: {
      Text(self.dataSource.squareStatus == .home ?
          "X" : self.dataSource.squareStatus == .visitor ? "0" : " ")
        .font(.largeTitle)
        .bold()
        .foregroundColor(.black)
        .frame(width: 70, height: 70, alignment: .center)
        .background(Color(red: 0.874, green: 0.617, blue: 0.622).opacity(0.9).cornerRadius(10))
        .padding(4)
    })
  }
}
