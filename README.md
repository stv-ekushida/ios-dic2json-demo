# ios-dic2json-demo
iOS Dictonary型をJSON型に変換するサンプル

## 使い方

```
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
```        

## Extensionの定義

```
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
```

