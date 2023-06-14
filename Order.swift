//
//  Order.swift
//  CupcakeCorner_12.06
//
//  Created by ionut.binisor on 14.06.2023.
//

import Foundation

class Order: ObservableObject {
    static let types = ["Vanilla", "Strawberry", "Chocolate", "Rainbow"]
    
    @Published var type = 0
    @Published var quantity = 3
    
    @Published var specialRequestEnabled = false {
        didSet {
            if specialRequestEnabled == false {
                extraFRosting = false
                addSprinkles = false 
            }
        }
    }
    @Published var extraFRosting = false
    @Published var addSprinkles = false
}
