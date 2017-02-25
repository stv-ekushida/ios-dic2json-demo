//
//  ViewController.swift
//  ios-dic2json-demo
//
//  Created by Kushida　Eiji on 2017/02/25.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupJson()
    }

    func setupJson() {
        let expense  = [10,20,30]
        let sum = [10,20,30]
        
        let dict: [String: AnyObject] = [
            "labels": expense as AnyObject,
            "datasets": [
                "label": "データ3件",
                "fillColor": "rgba(151,187,205,0.2)",
                "strokeColor": "rgba(151,187,205,1)",
                "pointColor": "rgba(151,187,205,1)",
                "pointStrokeColor": "rgba(151,187,205,1)",
                "pointHighlightFill": "rgba(151,187,205,1)",
                "pointHighlightStroke": "rgba(151,187,205,1)",
                "data": sum,
                
            ] as AnyObject
        ]
        
        let json = dict.dic2Json()
        print(json)
    }
}

