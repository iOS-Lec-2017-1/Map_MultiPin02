//
//  ViewPoint.swift
//  MultiPinMap
//
//  Created by 김종현 on 2017. 9. 2..
//  Copyright © 2017년 김종현. All rights reserved.
//

import MapKit
import UIKit

class ViewPoint: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String, subtitle: String) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
}
