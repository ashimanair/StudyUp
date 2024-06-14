//
//  NewToDoView.swift
//  StudyUp
//
//  Created by Scholar on 6/13/24.
//


import SwiftUI
import SwiftData
struct NewToDoView: View {
  @Bindable var toDoItem: ToDoItem
  @Environment(\.modelContext) var modelContext
  @Binding var showNewTask : Bool
  var body: some View {
    VStack {
      Text("Task Title:")
        .font(.title)
        .bold()
      TextField("Enter the tasks here..", text: $toDoItem.title, axis: .vertical)
        .font(.title3)
        .padding()
        .background(Color(.red))
        .opacity(0.2)
        .cornerRadius(15)
      Toggle(isOn: $toDoItem.isImportant) {
        Text("Is it important?!")
      }
      Button{
        addToDo()
        self.showNewTask = false
      } label: {
        Text("Add")
          .foregroundColor(Color.pink)
          .opacity(0.2)
      }
    }
    .padding()
  }
  func addToDo(){
    let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
    modelContext.insert(toDo)
  }
}

//#Preview {
//  NewToDoView()
//}
