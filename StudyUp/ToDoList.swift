//
//  ToDoList.swift
//  StudyUp
//
//  Created by Scholar on 6/13/24.
//

import SwiftUI
import SwiftData

struct ToDoList: View {
    
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack {
            HStack {
                Text("Study To-Do's 🥳")
                    .font(.title)
                    .fontWeight(.black)
                    Spacer()
                
                Button{
                    withAnimation{
                        self.showNewTask = true
                    }
                    self.showNewTask = true
                } label : {
                    Text("+")
                        .font(.title)
                        .bold()
                }
                
            }
            .padding()
        }
        Spacer()
        
        List {
            ForEach(toDos) { toDoItem in
                
                if toDoItem.isImportant == true {
                    Text("‼️" + toDoItem.title)
                } else {
                    Text(toDoItem.title)
                }
            }
            .onDelete(perform: deleteToDo)
        }
        .listStyle(.plain)
        
        if showNewTask{
            NewToDoView(toDoItem: ToDoItem(title: "", isImportant: false), showNewTask: $showNewTask)
        }
    }
    
    func deleteToDo(at offsets: IndexSet){
        for offset in offsets {
            let toDoItem = toDos[offset]
            modelContext.delete(toDoItem)
        }
    }
    
}


#Preview {
  ToDoList()
}
