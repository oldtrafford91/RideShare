//
//  ViewController.swift
//  RideShare
//
//  Created by Tran Tuan Hai on 7/26/18.
//  Copyright © 2018 Tran Tuan Hai. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
  
  @IBOutlet weak var mapView: MKMapView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }


}

extension ViewController: MKMapViewDelegate {
  
}



