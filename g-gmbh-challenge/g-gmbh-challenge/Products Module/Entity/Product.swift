//
//  Product.swift
//  g-gmbh-challenge
//
//  Created by Omar Samir on 2/12/19.
//  Copyright © 2019 Omar Samir. All rights reserved.
//

import UIKit
import ObjectMapper

class Product: BaseEntity,Mappable {
    
    var id: Int!
    var name: String!
    var productDescription: String!
    var price: Double!
    var image: Image!
    
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id                                  <- map["id"]
        name                                <- map["name"]
        productDescription                  <- map["productDescription"]
        price                               <- map["price"]
        image                               <- map["image"]
    }
    
}
