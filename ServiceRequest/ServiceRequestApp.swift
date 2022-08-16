//
//  ServiceRequestApp.swift
//  ServiceRequest
//
//  Created by فاطمة on 17/01/1444 AH.
//

import SwiftUI

@main
struct ServiceRequestApp: App {
    
 @StateObject   var listViewModel: ListViewModel = ListViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationView{
            ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
