//
//  ViewController.swift
//  Pulsing Animation
//
//  Created by Thakur Arjun Singh on 23/11/24.
//

import UIKit
import Pulsator

class ViewController: UIViewController {
    
    //MARK: - IBOutets
    @IBOutlet weak var imgVwPulsing: UIImageView!
    
    // Pulsator
    let pulsator = Pulsator()
    
    //MARK: - Viewcontroller's life cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add pulsator in imageview' layer
        imgVwPulsing.layer.superlayer?.insertSublayer(pulsator, below: imgVwPulsing.layer)
        pulsator.numPulse = 8
        pulsator.animationDuration = 5.0
        pulsator.backgroundColor = UIColor.systemCyan.cgColor
        pulsator.radius = 180
        pulsator.start()
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view.layer.layoutIfNeeded()
        pulsator.position = imgVwPulsing.layer.position
    }


}

