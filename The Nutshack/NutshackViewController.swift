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
    
    var personBool = false
    
    @IBAction func touchDraggedOut(_ sender: UIButton) {
        var touch = touches.anyObject() as! UITouch
        var point = touch.locationInView(self.view)
        
        
        
    }



    override func viewDidLoad() {
        super.viewDidLoad()
        
        
              }


                


    
}
