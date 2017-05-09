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
    @IBOutlet weak var endBackground: UIView!
    @IBOutlet weak var endBackgroundOne: UIView!
    
    
    var location = CGPoint(x: 0, y: 0)

    func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch : UITouch = touches.first as UITouch!
        location = touch.location(in: self.view)
        Person.center = location
    }
    
    func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch : UITouch = touches.first as UITouch!
        location = touch.location(in: self.view)
        
        self.Person.center = location
        
        
         class PassThroughView: UIView {
            
        func eventOne(inside point: CGPoint, with event: UIEvent?) -> Bool {
            for subview in subviews as [UIView] {
                if !subview.isHidden && subview.alpha > 0 && subview.isUserInteractionEnabled && subview.point(inside: convert(point, to: subview), with: event) {
                    return true
                }
            }
            return false
        }
    }
}
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
                }
    
                
                
            }
    
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
