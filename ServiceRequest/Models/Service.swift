//
//  Service.swift
//  ServiceRequest
//
//  Created by فاطمة on 17/01/1444 AH.
//

import Foundation
struct Service: Identifiable {
    let id: String = UUID().uuidString //random string
    let title: String
    let isCompleted: Bool
}
