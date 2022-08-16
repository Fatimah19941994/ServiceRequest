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
            
            ZStack{
               LinearGradient(gradient: Gradient(colors: [Color.purple,Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
              
                VStack {
                
           Image("makeup")
            .resizable()
            .frame(width: 300, height: 200)
            .padding()
            
        TextField("Enter your request",text: $textf)
                .padding()
                .padding()
              .background(Color(.secondarySystemBackground))
                .frame(height:50)
                .cornerRadius(50)
                
        Button(action: saveButten, label:{
                Text("+ Add New Service")
                        .foregroundColor(.white)
                        .font(.title2)
                        //.fontWeight(.heavy)
                        .frame(height:50)
                        .frame(width:300)
                        .background(Color.purple)
                        .cornerRadius(10)
                        .padding()
                 
                })

        }
            .padding()
        
     .navigationTitle("Request Service 💄")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    }
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
    
