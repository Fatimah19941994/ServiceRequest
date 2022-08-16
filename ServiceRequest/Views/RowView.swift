//
//  RowView.swift
//  ServiceRequest
//
//  Created by فاطمة on 17/01/1444 AH.
//

import SwiftUI

struct RowView: View {
    let item: Service
    var body: some View {
        HStack{
            
//Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
   // .foregroundColor(item.isCompleted ? .green : .red)
            
            Text(item.title)
            Spacer()
            
        }
        .font(.title2)
        .padding()
    }
}


struct RowView_Previews: PreviewProvider {
    
    static var item1 = Service(title: "Makup", isCompleted: false)
    static var item2 = Service(title: "HairStyle", isCompleted: true)
    
    static var previews: some View {
        Group {
  RowView(item: item1)
  RowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
