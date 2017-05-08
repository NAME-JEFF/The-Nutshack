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
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch : UITouch! = touches.first! as UITouch
        
        let location = touch.location(in: self.view)
        
        self.Person.center = location
    
        
        Person.
        
        
        PassThroughView =
        
        class PassThroughView: UIView {
            
            
            
            override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
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
    
