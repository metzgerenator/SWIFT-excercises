//
//  PhotoFilterController.swift
//  faceSnap
//
//  Created by Aileen Taboy on 10/29/16.
//  Copyright © 2016 Michael Metzger . All rights reserved.
//

import UIKit

class PhotoFilterController: UIViewController {
    
    private var mainImage: UIImage
    
    
    private let photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .ScaleAspectFit
        return imageView
    }()
    
    
    // Filter Header Label
    private lazy var filterHeaderLabel: UILabel = {
        let label = UILabel()
        label.text = "Select a filter"
        label.textAlignment = .Center
        return label
    }()
    
    
    lazy var filtersCollectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .Horizontal
        flowLayout.minimumLineSpacing = 10
        flowLayout.minimumInteritemSpacing = 1000
        flowLayout.itemSize = CGSize(width: 100, height: 100)
        
        let collectionView = UICollectionView(frame: CGRectZero, collectionViewLayout: flowLayout)
        collectionView.backgroundColor = .whiteColor()
        collectionView.registerClass(FilteredImageCell.self, forCellWithReuseIdentifier: FilteredImageCell.reuseIdentifier)
        
        
        collectionView.dataSource = self
        
        return collectionView
        
    }()
    
    private lazy var filteredImages: [UIImage] = {
        
        let filteredImageBuilder = FilteredImageBuilder(image: self.mainImage)
        return filteredImageBuilder.imageWithDefaultFilters()
        
        
        
    }()
    
    
    init(image: UIImage) {
        self.mainImage = image
        self.photoImageView.image = self.mainImage
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    // Layout Code
    override func viewWillLayoutSubviews() {
        photoImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(photoImageView)
        
        filterHeaderLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(filterHeaderLabel)
        
        filtersCollectionView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(filtersCollectionView)
        
        NSLayoutConstraint.activateConstraints([
            filtersCollectionView.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor),
            filtersCollectionView.leftAnchor.constraintEqualToAnchor(view.leftAnchor),
            filtersCollectionView.rightAnchor.constraintEqualToAnchor(view.rightAnchor),
            filtersCollectionView.heightAnchor.constraintEqualToConstant(200.0),
            filtersCollectionView.topAnchor.constraintEqualToAnchor(filterHeaderLabel.bottomAnchor),
            filterHeaderLabel.leftAnchor.constraintEqualToAnchor(view.leftAnchor),
            filterHeaderLabel.rightAnchor.constraintEqualToAnchor(view.rightAnchor),
            photoImageView.bottomAnchor.constraintEqualToAnchor(filtersCollectionView.topAnchor),
            photoImageView.topAnchor.constraintEqualToAnchor(view.topAnchor),
            photoImageView.leftAnchor.constraintEqualToAnchor(view.leftAnchor),
            photoImageView.rightAnchor.constraintEqualToAnchor(view.rightAnchor)
            ])
    }
    
    

}


//MARK:  - UICollectionviewDataSource 


extension PhotoFilterController: UICollectionViewDataSource {
    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filteredImages.count
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(FilteredImageCell.reuseIdentifier, forIndexPath: indexPath) as! FilteredImageCell
        
        
        cell.imageView.image = filteredImages[indexPath.row]
        
        
        return cell
        
        
    }
    
    
    
}































