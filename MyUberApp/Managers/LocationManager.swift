//
//  LocationManager.swift
//  MyUber
//
//  Created by Mallouka on 11/29/23.
//

import CoreLocation

class LocationManager: NSObject,ObservableObject {
    private let locationManager  = CLLocationManager()
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}

extension LocationManager:CLLocationManagerDelegate{
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations:
    [CLLocation]) {
        guard !locations.isEmpty else {return}
//        print(locations.first)
       locationManager.startUpdatingLocation()
    }
}
