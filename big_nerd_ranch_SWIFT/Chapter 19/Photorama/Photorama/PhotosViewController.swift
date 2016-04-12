//
//  PhotosViewController.swift
//  Photorama
//
//  Created by Michael Metzger  on 4/12/16.
//  Copyright © 2016 Michael Metzger . All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    var store: PhotosStore!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.fetchRecentPhotos() {
            (photoResult) -> Void in
            switch photoResult {
            case let .Success(photos):
                print("Successfully found \(photos.count) recent photos.")
            case let .Failure(error):
                print("Error fetching recent photos: \(error)")
            }
            
        }
    }
    
    
    
}
