//
//  ApiManager.swift
//  Pipettes
//
//  Created by Marsel Tzatzo on 14/12/2016.
//  Copyright © 2016 Marsel Tzatzo. All rights reserved.
//

import Alamofire
import ObjectMapper

class ApiManager: NSObject {

    static let shared = ApiManager()
    
    
    // Restrict access to this class 
    // to the singleton instance only
    private override init() { }
    
    func fetchPips( completion: @escaping ([PipDTO]?, Error?) -> ()) {
        let params = ["includeMultiplier":true]
        Alamofire.request(
            Constants.url,
            method: .post,
            parameters: params,
            encoding: JSONEncoding.default).responseString { (response) in
                switch response.result {
                case .success(let data):
                    let champions = Mapper<PipDTO>().mapArray(JSONString: data)
                    completion(champions, nil)
                case .failure(let error):
                    completion(nil, error)
                }
        }
    }
    
    
}
