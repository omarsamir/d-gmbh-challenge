//
//  APIClient.swift
//  g-gmbh-challenge
//
//  Created by Omar Samir on 2/12/19.
//  Copyright © 2019 Omar Samir. All rights reserved.
//

import UIKit
import ObjectMapper

class APIClient: NSObject {
    static let shared = APIClient()
    
    //MARK: Get products
    func getProducts(successHandler:@escaping ([Product])->Void,errorHandler:@escaping ((Error)-> Void)){
        let url = URL(string: Constants.HEROKU_API_BASE_URL)
        var request : URLRequest = URLRequest(url: url!)
        request.httpMethod = Constants.HTTPREQUEST_TYPE_GET
        let dataTask = URLSession.shared.dataTask(with: request) {
            data,response,error in
            if error == nil {
                let responseDictionary = try! JSONSerialization.jsonObject(with: data!, options: [])
                if (try? JSONSerialization.data(
                    withJSONObject: responseDictionary,
                    options: [])) != nil {
                    if let theJSONData = try? JSONSerialization.data(
                        withJSONObject: responseDictionary,
                        options: []) {
                        let theJSONText = String(data: theJSONData,
                                                 encoding: .ascii)
                        let products = [Product](JSONString: theJSONText!)!
                        successHandler(products)
                    }else{
                        errorHandler (error!)
                    }
                }
                
            }
            
        }
        dataTask.resume()
    }
}
