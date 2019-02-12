//
//  Image.swift
//  g-gmbh-challenge
//
//  Created by Omar Samir on 2/12/19.
//  Copyright © 2019 Omar Samir. All rights reserved.
//

import UIKit
import ObjectMapper

class Image: BaseEntity,Mappable {
    
    var link: String!
    var height: Double!
    var width: Double!
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        link     <- map["link"]
        height   <- map["height"]
        width    <- map["width"]
    }
}
