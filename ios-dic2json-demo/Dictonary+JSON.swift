//
//  Dictonary+JSON.swift
//  ios-dic2json-demo
//
//  Created by Kushida　Eiji on 2017/02/25.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

extension Dictionary {
    
    func dic2Json() -> String {
        
        var json: String = ""
        do {
            // Dict -> JSON
            let jsonData = try JSONSerialization.data(withJSONObject: self, options: [])
            
            json = NSString(data: jsonData, encoding: String.Encoding.utf8.rawValue)! as String
        } catch {
            print("Error!: \(error)")
        }        
        return json
    }
}
