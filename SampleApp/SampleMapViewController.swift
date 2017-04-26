//
//  SampleMapViewController.swift
//  ios-sdk
//
//  Created by Sarah Lensing on 3/13/17.
//  Copyright © 2017 Mapzen. All rights reserved.
//

import CoreLocation
import MapzenSDK

class SampleMapViewController : MZMapViewController {

  var firstTimeZoomToCurrentLocation = true
  var sceneDidLoad = false

  override var prefersStatusBarHidden: Bool {
    return false
  }
  func shouldZoomToCurrentLocation() {
    if !sceneDidLoad { return }
    if !receivedLocation() { return }
    _ = resetCameraOnCurrentLocation()
    firstTimeZoomToCurrentLocation = false
  }

  //MARK:- Location Delegate Overrides
  override func locationDidUpdate(_ location: CLLocation) {
    super.locationDidUpdate(location)
    if (firstTimeZoomToCurrentLocation) {
      shouldZoomToCurrentLocation()
    }
  }
}
