//
//  ViewController.swift
//  faceSnap
//
//  Created by Michael Metzger  on 10/29/16.
//  Copyright © 2016 Michael Metzger . All rights reserved.
//

import UIKit

class PhotoListController: UIViewController {
    
    
    lazy var cameraButton: UIButton = {
        
        let button  = UIButton(type: .System)
        
        button.setTitle("Camera", forState: .Normal)
        button.tintColor = .whiteColor()
        button.backgroundColor = UIColor(red: 254/255.0, green: 123/255.0, blue: 135/255.0, alpha: 1.0)
        
        button.addTarget(self, action: #selector(PhotoListController.presentImagePickerController), forControlEvents: .TouchUpInside)
        
        
        return button
        
    }()
    
    
    lazy var mediaPickerManager: MediaPickerManager = {
       let manager  = MediaPickerManager(presentingViewController: self)
        manager.delegate = self
        return manager
        
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    // MARK:  - Layout
    override func viewDidLayoutSubviews() {
        
        view.addSubview(cameraButton)
        cameraButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activateConstraints([
            cameraButton.leftAnchor.constraintEqualToAnchor(view.leftAnchor),
            cameraButton.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor),
            cameraButton.rightAnchor.constraintEqualToAnchor(view.rightAnchor),
            cameraButton.heightAnchor.constraintEqualToConstant(56.0)
            ])
        
    }
    //MARK:  -Image Picker Controller
    
    
    @objc private func presentImagePickerController() {
        
        mediaPickerManager.presentImagePickerController(animated: true)
        
    }
    


}


//MARK:  -MediaPickerManagerDelegate 

extension PhotoListController: MediaPickermanagerDelegate {
    
    func mediaPickerManager(manager: MediaPickerManager, didFinishPickingImage image: UIImage) {
        
        let photoFilterController = PhotoFilterController(image: image)
        let navigationController = UINavigationController(rootViewController: photoFilterController)
        
        manager.dismissImagePickerController(animated: true) {
            
            self.presentViewController(navigationController, animated: true, completion: nil)
        }
        
        
        
    }
    
    
}
















































