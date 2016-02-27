//
//  MapViewController.swift
//  WorldTrotter
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController,MKMapViewDelegate, CLLocationManagerDelegate {
    let locationManager = CLLocationManager()
    var mapView: MKMapView!
    
    
    override func loadView() {
        
      
        //Create a map view
        mapView = MKMapView()
        
        
   
        
        
        
        //Set it as *the* view of the is view controller 
        view = mapView
        //make a button
        let button1: UIButton = UIButton(frame: CGRectMake(100,400,100,50))
        button1.backgroundColor = UIColor.blackColor()
        
        button1.setTitle("Locate Me", forState: UIControlState.Normal)
        button1.addTarget(self, action: "locateUser:", forControlEvents: UIControlEvents.TouchUpInside)
        button1.tag = 1
        //add constraints
        button1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button1)
        
        let top = button1.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 50)
        
        let margins1 = view.layoutMarginsGuide
        
        let leading = button1.leadingAnchor.constraintEqualToAnchor(margins1.leadingAnchor)
        let trailing = button1.trailingAnchor.constraintEqualToAnchor(margins1.trailingAnchor)
        
        top.active = true
        leading.active = true
        trailing.active = true

        
        
      
        
        
        //create segmented control
        
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.addTarget(self,
            action: "mapTypeChanged:",
            forControlEvents: .ValueChanged)
        
       
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        
        let topConstraint = segmentedControl.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 8)
        
       let margins = view.layoutMarginsGuide
        
        let leadingConstraint = segmentedControl.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor)
        let trailingConstraint = segmentedControl.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor)
        
        topConstraint.active = true
        leadingConstraint.active = true
        trailingConstraint.active = true
        
  
        
    }
    
        func mapTypeChanged(segControl: UISegmentedControl) {
            switch segControl.selectedSegmentIndex {
            case 0:
                mapView.mapType = .Standard
            case 1:
                mapView.mapType = .Hybrid
            case 2:
                mapView.mapType = .Satellite
            default:
                break
            }
        }
    
    func locateUser(sender: UIButton!) {
        let bttnTag: UIButton = sender
        
        if bttnTag.tag == 1 {
            
            
            mapView.showsUserLocation = true
        }
        
    }
    
        override func viewDidLoad() {
            super.viewDidLoad()
           locationManager.requestWhenInUseAuthorization()
            
            print("MapViewController loaded its view")
        }

    

    
    
}
