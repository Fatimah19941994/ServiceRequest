//
//  ListView.swift
//  ServiceRequest
//
//  Created by فاطمة on 17/01/1444 AH.
//

import SwiftUI

struct ListView: View {
@EnvironmentObject var listViewModel: ListViewModel

    
    var body: some View {
        List{
    ForEach(listViewModel.items) { item in
       RowView(item: item)
          
           
        
            }
            
    .onDelete(perform: listViewModel.deleteItem)
    .onMove(perform: listViewModel.moveItem)
        }
    
    
        .navigationTitle("Requests 💄")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
NavigationLink("Add", destination: AddView())
            )
        
        
    }
    
   

}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ListView()
        }
        .environmentObject(ListViewModel())
    }
}

