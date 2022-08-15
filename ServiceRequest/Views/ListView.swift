//
//  ListView.swift
//  ServiceRequest
//
//  Created by فاطمة on 17/01/1444 AH.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
    "first",
    "second"
    ]
    
    var body: some View {
        List{
            ForEach(items, id: \.self) { item in
              RowView(title: item)
                
            }
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
    }
}

