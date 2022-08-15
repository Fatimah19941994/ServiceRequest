//
//  RowView.swift
//  ServiceRequest
//
//  Created by فاطمة on 17/01/1444 AH.
//

import SwiftUI

struct RowView: View {
    let title: String
    var body: some View {
        HStack{
            
            Image(systemName: "checkmark.circles")
            Text(title)
            Spacer()
            
        }
    }
}


struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(title: "first")
    }
}
