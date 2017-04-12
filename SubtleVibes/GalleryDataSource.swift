//
//  GalleryDataSource.swift
//  SubtleVibes
//
//  Created by Josh Safran on 4/11/17.
//  Copyright © 2017 Josh Safran. All rights reserved.
//

import Foundation
import Alamofire


class GalleryDataSource {
    static let sharedInstance = GalleryDataSource()
    
    func DownloadTestObjectPool(){
        
        let testURL = "https://hackathon.philamuseum.org/api/v0/collection/objectsOnView?limit=50&offset=0&api_token=C3XAu0Sgmrllig0aYGmS46LVfvCt0elxHP1gGWYOJZHFJQpW3kLgXybPni5G"
        
        Alamofire.request(testURL).responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }
    }
    
//    func GalleryDataSource(){
//        
//    }
    
//    var 
    
    
}
