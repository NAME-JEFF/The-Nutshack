//
//  NutshackViewController.swift
//  The Nutshack
//
//  Created by student8 on 4/28/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit

class NutshackViewController: UIViewController {
    @IBOutlet weak var Person: UIImageView!
    @IBOutlet weak var topTitoBarrier: UIImageView!
    @IBOutlet weak var rightTitoBarrier: UIImageView!

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch : UITouch! =  touches.first! as UITouch
        
        let location = touch.location(in: self.view)
        
        Person.center = location
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    
    
    
    
    
    
    }
