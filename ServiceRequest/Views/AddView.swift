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
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
      
        ScrollView{
            
          
                
        TextField("Enter your request",text: $textf)
                .padding()
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
        
        .navigationTitle("Request Service 💄")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    
 func saveButten() {
     if textIsAppropiate() {
listViewModel.addItem(title: textf)
presentationMode.wrappedValue.dismiss()
         //to go back one in the view hierarchy
    }
 }
    
    func textIsAppropiate() -> Bool {
        if textf.count < 3 {
    alertTitle = "Enter more than 3 letters"
            showAlert.toggle()
            return false
        }
        return true
    }
    


func getAlert() -> Alert {
    
    return Alert (title: Text(alertTitle))
    
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        AddView()
        }
    .environmentObject(ListViewModel())
    }
}
}
    
