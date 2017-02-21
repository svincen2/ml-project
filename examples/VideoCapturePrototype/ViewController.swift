//
//  ViewController.swift
//  VideoCapturePrototype
//
//  Created by Sean Vincent on 2/13/17.
//  Copyright © 2017 Sean Vincent. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let captureSession = AVCaptureSession()
        captureSession.sessionPreset = AVCaptureSessionPresetLow
        let discoverySession =
            AVCaptureDeviceDiscoverySession(
                deviceTypes: [AVCaptureDeviceType.builtInDualCamera],
                mediaType: nil,
                position: AVCaptureDevicePosition.unspecified)
        print(discoverySession?.devices ?? "No devices")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

