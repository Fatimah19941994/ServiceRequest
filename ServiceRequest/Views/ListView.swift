//
//  ListView.swift
//  ServiceRequest
//
//  Created by فاطمة on 17/01/1444 AH.
//

import SwiftUI

struct ListView: View {
    
@State var items: [Service] = [
Service(title: "Makeup", isCompleted: false),
Service(title: "Hairstyle", isCompleted: true),
Service(title: "Lash Lifting", isCompleted: false),
    ]
    
    var body: some View {
        List{
            ForEach(items) { item in
       RowView(item: item)
            //  RowView(title: item)
                
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

