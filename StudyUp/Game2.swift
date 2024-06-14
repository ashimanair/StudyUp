//
//  Game2.swift
//  StudyUp
//
//  Created by Scholar on 6/13/24.
//

import SwiftUI
struct Game2: View {
    
  @StateObject var ticTacToeModel = TicTacToeModel()
  @State var gameOver : Bool = false
    
    func buttonAction(_ index : Int) {
      _ = self.ticTacToeModel.makeMove(index: index, player: .home)
      self.gameOver = self.ticTacToeModel.gameOver.1
    }
    
    var body: some View {
      ZStack {
        Color(red: 204/255, green: 227/255, blue: 222/255)
          .ignoresSafeArea()
          
      VStack {
        Spacer()
        Text("Tic Tac Toe")
          .bold()
          .foregroundColor(Color.black)
          .padding(.bottom)
          .font(.title)
        ForEach(0 ..< (ticTacToeModel.squares.count/3), content: {
          row in
          HStack {
            Spacer()
            ForEach(0 ..< 3, content: {
              column in
              let index = row * 3 + column
              SquareView(dataSource: ticTacToeModel.squares[index], action: {self.buttonAction(index)})
              Spacer()
            })
          }
        })
        Spacer()
      }
      .alert(isPresented: self.$gameOver, content: {
        Alert(title: Text("Game Over"),
           message: Text(self.ticTacToeModel.gameOver.0 != .empty ? self.ticTacToeModel.gameOver.0 == .home ? "You Win!": "AI Wins!" : "Nobody Wins" ) , dismissButton: Alert.Button.destructive(Text("Ok"), action: {
          self.ticTacToeModel.resetGame()
            }))
      })
      .background(Rectangle()
        .foregroundColor(.white))
      .frame(width:350, height: 400)
        .cornerRadius(10)
        .padding()
    }
  }
}
struct Game2_Previews: PreviewProvider {
  static var previews: some View {
    Game2()
  }
}
