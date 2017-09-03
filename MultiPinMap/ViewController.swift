//
//  ViewController.swift
//  MultiPinMap
//
//  Created by 김종현 on 2017. 9. 2..
//  Copyright © 2017년 김종현. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myMapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 지도의 location, region, Map 설정
        zoomToRegion()
        
        let a = ViewPoint(coordinate: CLLocationCoordinate2D(latitude: 35.104532, longitude: 129.123774), title: "오륙도 해맞이공원", subtitle: "스카이워크 걷기")
        let b = ViewPoint(coordinate: CLLocationCoordinate2D(latitude: 35.109237, longitude: 129.12652), title: "농바위", subtitle: "해안절경 바위")
        let c = ViewPoint(coordinate: CLLocationCoordinate2D(latitude: 35.11696, longitude: 129.12755), title: "치마바위", subtitle: "해안절경 바위")
        let d = ViewPoint(coordinate: CLLocationCoordinate2D(latitude: 35.123349, longitude: 129.123774), title: "어울마당",subtitle: "광안대교가 멋진곳")
        let e = ViewPoint(coordinate: CLLocationCoordinate2D(latitude: 35.12384, longitude: 129.124117), title: "해녀막사", subtitle: "해산물로 소주한잔")
        let f = ViewPoint(coordinate: CLLocationCoordinate2D(latitude: 35.127701, longitude: 129.1224), title: "구름다리", subtitle: "바닷길 다리 건너기")
        let g = ViewPoint(coordinate: CLLocationCoordinate2D(latitude: 35.133176, longitude: 129.120684), title: "동생말 전망대", subtitle: "광안리, 해운대 보기")
        myMapView.addAnnotations([a, b, c, d, e, f, g])
        
    }
    
    func zoomToRegion() {
        
        let location = CLLocationCoordinate2D(latitude: 35.118002, longitude: 129.121017)
        let region = MKCoordinateRegionMakeWithDistance(location, 2000.0, 4000.3)
        myMapView.setRegion(region, animated: true)
    }
    
}

