//
//  ListViewModel.swift
//  ServiceRequest
//
//  Created by فاطمة on 17/01/1444 AH.
//

import Foundation
class ListViewModel: ObservableObject {
//for main class to be object
    
  
@Published var items: [Service] = []
    
    init()
    {
        getItems()
    }
    
func getItems() {
    let newItems = [
        Service(title: "Makeup", isCompleted: false),
        Service(title: "Hairstyle", isCompleted: true),
        Service(title: "Lash Lifting", isCompleted: false),
            ]
    items.append(contentsOf: newItems)

    }
    
    func deleteItem(indexSet : IndexSet) {
            items.remove(atOffsets: indexSet)
            
        }
        
        func moveItem(from: IndexSet, to: Int){
            items.move(fromOffsets: from, toOffset: to)
            
        }
    
    func addItem(title: String){
    let newItem = Service(title: title, isCompleted: false)
        items.append(newItem)
    }

    
}
