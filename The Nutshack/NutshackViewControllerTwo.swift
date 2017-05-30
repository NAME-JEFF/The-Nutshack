//
//  NutshackViewControllerTwo.swift
//  The Nutshack
//
//  Created by student8 on 5/19/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit

class NutshackViewControllerTwo: UIViewController {
    
    var roids = 1
    var lives = 3
    var determiner = 0
    var onT = 1
    var touched = false
    var onBannedBool = false
    
    @IBOutlet weak var roidsView: UIImageView!
    
    @IBOutlet weak var livesLabelT: UILabel!
    
    @IBOutlet weak var blackViewT1: UIView!

    @IBOutlet weak var blackViewT2: UIView!
    
    @IBOutlet weak var blackViewT3: UIView!
    
    @IBOutlet weak var blackViewT4: UIView!
    
    @IBOutlet weak var blackViewT5: UIView!
    
    @IBOutlet weak var blackViewT6: UIView!
    
    @IBOutlet weak var blackViewT7: UIView!
    
    @IBOutlet weak var blackViewT8: UIView!
    
    @IBOutlet weak var blackViewT9: UIView!
    
    @IBOutlet weak var blackViewT10: UIView!
    
    @IBOutlet weak var blackViewT11: UIView!
    
    @IBOutlet weak var blackViewT12: UIView!
    
    @IBOutlet weak var blackViewT13: UIView!
    
    @IBOutlet weak var blackViewT14: UIView!
    
    @IBOutlet weak var blackViewT15: UIView!
    
    @IBOutlet weak var blackViewT16: UIView!
    
    @IBOutlet weak var blackViewT17: UIView!
    
    @IBOutlet weak var blackViewT18: UIView!
    
    @IBOutlet weak var blackViewT19: UIView!
    
    @IBOutlet weak var blackViewT20: UIView!
    
    
    var location = CGPoint(x: 0, y: 0)
    
    @IBOutlet weak var Person: UIImageView!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch : UITouch = touches.first as UITouch!
        location = touch.location(in: self.view)
        
    }
    
    
    @IBAction func onPersonPanned(_ sender: UIPanGestureRecognizer) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch : UITouch = touches.first as UITouch!
        
        if touched == true {
            
                        location = touch.location(in: self.view)
            

        
                
            }
            
                            if blackViewT1.frame.contains(Person.center) {
                                determiner = 1
            }
            
                            if blackViewT1.frame.contains(Person.center) {
                                determiner = 1
            }
            
                            if blackViewT2.frame.contains(Person.center) {
                                determiner = 1
            }
            
                            if blackViewT3.frame.contains(Person.center) {
                                determiner = 1
            }
            
                            if blackViewT4.frame.contains(Person.center) {
                                determiner = 1
            }
            
                            if blackViewT5.frame.contains(Person.center) {
                                determiner = 1
            }
            
                            if blackViewT6.frame.contains(Person.center) {
                                determiner = 1
            }
            
                            if blackViewT7.frame.contains(Person.center) {
                                determiner = 1
            }
            
                            if blackViewT8.frame.contains(Person.center) {
                                determiner = 1
            }
            
                            if blackViewT9.frame.contains(Person.center) {
                                determiner = 1
            }
            
                            if blackViewT10.frame.contains(Person.center) {
                                determiner = 1
            }
            
                            if blackViewT11.frame.contains(Person.center) {
                                determiner = 1
            }
            
                            if blackViewT12.frame.contains(Person.center) {
                                determiner = 1
            }
            
                            if blackViewT13.frame.contains(Person.center) {
                                determiner = 1
            }
            
                            if blackViewT14.frame.contains(Person.center) {
                                determiner = 1
                
            }
                            if blackViewT15.frame.contains(Person.center) {
                                determiner = 1
                
            }
                            if blackViewT16.frame.contains(Person.center) {
                                determiner = 1
                
            }
                            if blackViewT17.frame.contains(Person.center) {
                                determiner = 1
                
            }
                            if blackViewT18.frame.contains(Person.center) {
                                determiner = 1
                
            }
                            if blackViewT19.frame.contains(Person.center) {
                                determiner = 1
                
            }
                            if blackViewT20.frame.contains(Person.center) {
                                determiner = 1
                
            }
            
            
            
            if determiner == 1 {
                lives -= 1
                
                if lives == 3 {
                    livesLabelT.text = "Lives: 3"
                    livesLabelT.textColor = UIColor.green
                    
                }
                if lives == 2 {
                    livesLabelT.text = "Lives: 2"
                    livesLabelT.textColor = UIColor.orange
                    Person.frame = CGRect(x: 60, y: 60, width: 44, height: 44)
                    self.view.addSubview(Person)
                }
                
                if lives == 1 {
                    livesLabelT.text = "Lives: 1"
                    livesLabelT.textColor = UIColor.red
                    
                    Person.frame = CGRect(x: 60, y: 60, width: 44, height: 44)
                    self.view.addSubview(Person)
                }
                
                if lives == 0 {
                    print("dead")
                    //        performSegue(withIdentifier: "SecondViewController", sender: self)
                    lives = 3
                }
                
                
                
            }
        }
    

    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        livesLabelT.text = "Lives: 3"

        }
        
        
        @IBAction func onPickUp(_ sender: UIButton) {
            if roidsView.frame.contains(Person.center)
            {
                Person.image = UIImage(named:"Roblox-1")
                Person.frame = CGRect(x: Person.frame.origin.x, y: Person.frame.origin.y, width: 22, height: 22)
                self.view.addSubview(Person)
            }
            
            if endView.frame.contains(Person.center) {
                Person.frame = CGRect(x: Person.frame.origin.x, y: Person.frame.origin.y, width: 500, height: 500)
                Person.image = UIImage(named:"shag")
            }
            
            
        }
        
}

