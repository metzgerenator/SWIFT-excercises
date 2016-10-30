//
//  MediaPickerManager.swift
//  faceSnap
//
//  Created by Aileen Taboy on 10/29/16.
//  Copyright © 2016 Michael Metzger . All rights reserved.
//

import UIKit
import MobileCoreServices


protocol MediaPickermanagerDelegate: class {
    
    func mediaPickerManager(manager: MediaPickerManager, didFinishPickingImage image: UIImage)
}

class MediaPickerManager: NSObject {
    
    private let imagePickerController = UIImagePickerController()
    private let presentingViewController: UIViewController
    
    weak var delegate: MediaPickermanagerDelegate?
    
    
    init(presentingViewController: UIViewController) {
        self.presentingViewController = presentingViewController
         super.init()
        
        
        imagePickerController.delegate = self
        
        if UIImagePickerController.isSourceTypeAvailable(.Camera) {
            imagePickerController.sourceType = .Camera
            imagePickerController.cameraDevice = .Front
            
        } else {
            
            imagePickerController.sourceType = .PhotoLibrary
        }
        
        
        imagePickerController.mediaTypes = [kUTTypeImage as String]
        
    }
    
    
    func presentImagePickerController(animated animated: Bool) {
        presentingViewController.presentViewController(imagePickerController, animated: animated, completion: nil)
        
    }
    
    
    func dismissImagePickerController(animated animated: Bool, completion: (() -> Void)) {
        
        imagePickerController.dismissViewControllerAnimated(animated, completion: completion)
        
        
    }
    
    
}


extension MediaPickerManager: UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        delegate?.mediaPickerManager(self, didFinishPickingImage: image)
        
    }
    
    
}





