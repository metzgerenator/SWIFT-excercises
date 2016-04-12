//
//  PhotoStore.swift
//  Photorama
//
//  Created by Michael Metzger  on 4/12/16.
//  Copyright © 2016 Michael Metzger . All rights reserved.
//

import Foundation

class PhotosStore {
    
    let session: NSURLSession = {
        let config = NSURLSessionConfiguration.defaultSessionConfiguration()
        return NSURLSession(configuration: config)
    }()
    
    
    
    
    func fetchRecentPhotos(completion completion: (PhotosResult) -> Void)  {
        let url = FlickrAPI.recentPhotosURL()
        let request = NSURLRequest(URL: url)
        let task = session.dataTaskWithRequest(request){
            (data, response, error) -> Void in
            
            let result = self.processRecentPhotosRequest(data: data, error: error)
            completion(result)
            
        }
    
    task.resume()
    
    }
    
    
    
    func processRecentPhotosRequest(data data: NSData?, error: NSError?) -> PhotosResult {
        guard let jsonData = data else {
            return .Failure(error!)
        }
        
        return FlickrAPI.photosfromJSONData(jsonData)
    }
    

    
}
