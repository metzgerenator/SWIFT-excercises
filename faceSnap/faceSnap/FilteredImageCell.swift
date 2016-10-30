//
//  FilteredImageCell.swift
//  faceSnap
//
//  Created by Aileen Taboy on 10/30/16.
//  Copyright © 2016 Michael Metzger . All rights reserved.
//

import UIKit

class FilteredImageCell: UICollectionViewCell {
    
    
    static let reuseIdentifier = String(FilteredImageCell.self)
    
    
    let imageView = UIImageView()
    
    
    override func layoutSubviews() {
        contentView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activateConstraints([
            imageView.topAnchor.constraintEqualToAnchor(contentView.topAnchor),
            imageView.rightAnchor.constraintEqualToAnchor(contentView.rightAnchor),
            imageView.bottomAnchor.constraintEqualToAnchor(contentView.bottomAnchor),
            imageView.leftAnchor.constraintEqualToAnchor(contentView.leftAnchor),
            
            ])
        
        
    }
    
    
    
    
}
