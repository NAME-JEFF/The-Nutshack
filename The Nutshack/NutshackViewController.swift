//
//  NutshackViewController.swift
//  The Nutshack
//
//  Created by student8 on 4/28/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit

class NutshackViewController: UIViewController {
    var roids = 1
    var model = 1
    
    @IBOutlet weak var redRoids: UIView!
    
    @IBOutlet weak var blueRoids: UIView!


    var location = CGPoint(x: 0, y: 0)
    
    @IBOutlet weak var Person: UIImageView!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch : UITouch = touches.first as UITouch!
        location = touch.location(in: self.view)
        Person.center = location
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
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
        
        if roids == 4 { Person.frame = CGRect(x: Person.frame.origin.x, y: Person.frame.origin.y, width: 300, height: 50)
            self.view.addSubview(Person)
        }
        
        if roids == 5 {
            Person.frame = CGRect(x: Person.frame.origin.x, y: Person.frame.origin.y, width: 85, height: 100)
            self.view.addSubview(Person)
        Person.image = UIImage(named:"Tito")
            if roids == 3 {
                roids = 1
            }
            
            self.view.addSubview(blueRoids!)
            self.view.addSubview(redRoids!)
            
            let animator = UIDynamicAnimator(referenceView: self.view)
            
            let gravity = UIGravityBehavior(items: [blueRoids!,
                                                    redRoids!])
            let vector = CGVector(dx: 0.0, dy: 1.0)
            gravity.gravityDirection = vector
            
            let collision = UICollisionBehavior(items: [blueRoids!,
                                                        redRoids!])
            collision.translatesReferenceBoundsIntoBoundary = true
            
            animator.addBehavior(collision)
            animator.addBehavior(gravity)
            
            func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
                
                if let theTouch = touches.first {
                    var currentLocation = theTouch.location(in: self.view)
                    let offset = UIOffsetMake(20, 20)
                    let attachment = UIAttachmentBehavior(item: blueRoids!,
                    offsetFromCenter: offset,
                    attachedToAnchor: currentLocation)
                    animator.addBehavior(attachment)
                    
                    func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
                        if let theTouch = touches.first {
                            
                            attachment.anchorPoint = currentLocation
                            
                            func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
                                animator.removeBehavior(attachment)                }
                
            }
            

            
            }
                }

                }
                }
                }
    
    
                }


                
