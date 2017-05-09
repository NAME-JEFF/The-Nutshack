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
    var roids = 1
    
    
    var location = CGPoint(x: 0, y: 0)

    func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch : UITouch = touches.first as UITouch!
        location = touch.location(in: self.view)
        Person.center = location
    }
    
    func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch : UITouch = touches.first as UITouch!
        location = touch.location(in: self.view)
        
        Person.center = location
    
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Person.frame = CGRect(x: 130, y: 450, width: 85, height: 100)

        self.view.addSubview(Person)
    
}

    @IBAction func takenRoids(_ sender: UIButton) {
        roids += 1
        
        if roids == 2 { Person.frame = CGRect(x: Person.frame.origin.x, y: Person.frame.origin.y, width: 185, height: 200)
            self.view.addSubview(Person)
        }
        
        if roids == 3 { Person.frame = CGRect(x: Person.frame.origin.x, y: Person.frame.origin.y, width: 285, height: 300)
            self.view.addSubview(Person)
        }
        
        if roids == 4 { Person.frame = CGRect(x: Person.frame.origin.x, y: Person.frame.origin.y, width: 285, height: 30)
            self.view.addSubview(Person)
        }
        
        if roids == 5 {
            roids = 1
        }

        }
    }
