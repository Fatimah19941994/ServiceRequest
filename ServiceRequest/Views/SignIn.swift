//
//  SignIn.swift
//  ServiceRequest
//
//  Created by فاطمة on 17/01/1444 AH.
//

import SwiftUI

struct SignIn: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongPassword = 0
    @State private var wrongUsername = 0
    @State private var showingLoginScreen = false
@State private var showinLoginScreen = false
    
    var body: some View {
        NavigationView{
            ZStack{
           Color.purple.ignoresSafeArea()
            Circle()
              .scale(1.7)
              .foregroundColor(.white.opacity(0.15))
                Circle()
                .scale(1.35)
                .foregroundColor(.white)
                VStack{
                Text("Login")
                    .font(.largeTitle)
                    .bold()
                    .padding()
        TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
        
                    
                    SecureField("Password", text: $password)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                  
                    Button("LogIn"){
                        auth(username: username, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                NavigationLink(destination: Text("You are logged in @\(username)"), isActive: $showinLoginScreen){
                        EmptyView()
                        
                    }
              //  NavigationLink("LogIn", destination: Text("Wellcom"))
                   
                    
                }
            }
            
        }
        
        .navigationBarHidden(true)
        
    }
    func auth(username:String, password: String){
        if username.lowercased() == "mario20221" {
            wrongUsername = 0
            if password.lowercased() == "abc123" {
                wrongPassword = 0
                showinLoginScreen = true
            
            } else {
                wrongPassword = 2
            }
        } else {
            wrongPassword = 2
        }
    }
    
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
