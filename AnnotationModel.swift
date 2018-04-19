//
//  AnnotationModel.swift
//  SwissKnife
//
//  Created by Robert on 2018-04-19.
//  Copyright © 2018 Georgios. All rights reserved.
//

import MapKit

class AnnotationModel: NSObject, MKAnnotation {

    let title: String?
    let locationName: String
    let dicipline: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, locationName: String, dicipline: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.locationName = locationName
        self.dicipline = dicipline
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return locationName
    }
}
