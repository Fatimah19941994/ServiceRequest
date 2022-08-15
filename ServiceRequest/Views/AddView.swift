//
//  AddView.swift
//  ServiceRequest
//
//  Created by فاطمة on 17/01/1444 AH.
//

import SwiftUI

struct AddView: View {
@Environment(\.presentationMode) var presentationMode //keypath
    
@EnvironmentObject var listViewModel: ListViewModel
    
 @State var textf: String = ""
    
    var body: some View {
        ScrollView{
            VStack{
        TextField("Enter your request",text: $textf)
                .padding()
              .background(Color(.secondarySystemBackground))
                .frame(height:50)
                .cornerRadius(10)
                
        Button(action: saveButten, label:{
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
    
 func saveButten() {
        //to go back one in the view hierarchy
listViewModel.addItem(title: textf)
presentationMode.wrappedValue.dismiss()
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        AddView()
        }
    .environmentObject(ListViewModel())
    }
}
