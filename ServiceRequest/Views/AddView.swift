//
//  AddView.swift
//  ServiceRequest
//
//  Created by فاطمة on 17/01/1444 AH.
//

import SwiftUI

struct AddView: View {
    @State var textf: String = ""
    
    var body: some View {
        ScrollView{
            VStack{
        TextField("Enter your request",text: $textf)
                .padding()
              .background(Color(.secondarySystemBackground))
                .frame(height:50)
                .cornerRadius(10)
                
                Button(action:{
                    
                } , label:{
                Text("Send")
                        .foregroundColor(.white)
                        .font(.title2)
                        .frame(height:50)
                        .frame(width:300)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding()
                 
                })

        }
            .padding()
        }
        .navigationTitle("Request Service 💄")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        AddView()
        }
    }
}
