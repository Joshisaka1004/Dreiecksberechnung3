//
//  mapVC.swift
//  Dreiecksberechnung3
//
//  Created by Joachim Vetter on 22.07.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit
import MapKit

class mapVC: UIViewController {

    var myMap: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myMap = MKMapView()
        view = myMap
    }

}
