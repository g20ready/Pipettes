//
//  PipDTO.swift
//  Pipettes
//
//  Created by Marsel Tzatzo on 14/12/2016.
//  Copyright © 2016 Marsel Tzatzo. All rights reserved.
//

import ObjectMapper

class PipDTO: Mappable {

    var currencyId: Int?
    var buy: Double?
    var sell: Double?
    var name: String?
    var pipMultiplier: Int?
    
    //MARK: Mappable
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        currencyId      <- map["currencyId"]
        buy             <- map["buy"]
        sell            <- map["sell"]
        name            <- map["name"]
        pipMultiplier   <- map["pipMultiplier"]
    }
    
}
