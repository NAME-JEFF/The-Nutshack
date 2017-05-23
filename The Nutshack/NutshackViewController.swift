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
    var lives = 3
    var determiner = 0
    var onT = 1
    var touched = 0
    
    @IBOutlet weak var livesLabel: UILabel!
    
    @IBOutlet weak var startView: UIView!
    
    @IBOutlet weak var endView: UIView!
    
    @IBOutlet weak var roidsView: UIView!
    
    @IBOutlet weak var topBlack: UIView!
    
    @IBOutlet weak var blackView1: UIView!
    
    @IBOutlet weak var blackView2: UIView!
    
    @IBOutlet weak var blackView3: UIView!
    
    @IBOutlet weak var blackView4: UIView!
    
    @IBOutlet weak var blackView5: UIView!
    
    @IBOutlet weak var blackView6: UIView!

    @IBOutlet weak var blackView7: UIView!
    
    @IBOutlet weak var blackView8: UIView!
    
    @IBOutlet weak var blackView9: UIView!
    
    @IBOutlet weak var blackView10: UIView!
    
    @IBOutlet weak var blackView11: UIView!
    
    @IBOutlet weak var blackView12: UIView!
    
    @IBOutlet weak var blackView13: UIView!
    
    @IBOutlet weak var blackView14: UIView!
    
    
    var location = CGPoint(x: 0, y: 0)
    
    @IBOutlet weak var Person: UIImageView!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch : UITouch = touches.first as UITouch!
        location = touch.location(in: self.view)
        
    
    }
    
    @IBAction func onPersonPanned(_ sender: UIPanGestureRecognizer) {
  //      onPersonPanned == 1 {
        
//        touched = 1
//        }
 //       else {
//            touched = 0
//        }
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch : UITouch = touches.first as UITouch!
        
        if touched == 1 {
        
            location = touch.location(in: self.view)
        
        Person.center = location

                                    if startView.frame.contains(Person.center) {
                                        self.determiner = 0
                                    }
        
        if endView.frame.contains(Person.center) {
            determiner = 0
        }
        
        
                                if topBlack.frame.contains(Person.center) {
                                    determiner = 1
                                }
        
                                if blackView1.frame.contains(Person.center) {
                                    determiner = 1
                                }
                                
                                if blackView1.frame.contains(Person.center) {
                                    determiner = 1
                                }
                                
                                if blackView2.frame.contains(Person.center) {
                                    determiner = 1
                                }
                                
                                if blackView3.frame.contains(Person.center) {
                                    determiner = 1
                                }
                                
                                if blackView4.frame.contains(Person.center) {
                                    determiner = 1
                                }
                                
                                if blackView5.frame.contains(Person.center) {
                                    determiner = 1
                                }
                                
                                if blackView6.frame.contains(Person.center) {
                                    determiner = 1
                                }
                                
                                if blackView7.frame.contains(Person.center) {
                                    determiner = 1
                                }
                                
                                if blackView8.frame.contains(Person.center) {
                                    determiner = 1
                                }
                                
                                if blackView9.frame.contains(Person.center) {
                                    determiner = 1
                                }
                                
                                if blackView10.frame.contains(Person.center) {
                                    determiner = 1
                                }
                                
                                if blackView11.frame.contains(Person.center) {
                                    determiner = 1
                                }
                                
                                if blackView12.frame.contains(Person.center) {
                                    determiner = 1
                                }
                                
                                if blackView13.frame.contains(Person.center) {
                                    determiner = 1
                                }

                                if blackView14.frame.contains(Person.center) {
                                    determiner = 1
                        
                    }

        
                    if determiner == 1 {
                    lives -= 1
                        
                        if lives == 3 {
                            livesLabel.text = "Lives: 3"
                            livesLabel.textColor = UIColor.green
                            
                        }
                        if lives == 2 {
                            livesLabel.text = "Lives: 2"
                            livesLabel.textColor = UIColor.orange
                            Person.frame = CGRect(x: 60, y: 60, width: 44, height: 44)
                                    self.view.addSubview(Person)
                        }
                        
                        if lives == 1 {
                            livesLabel.text = "Lives: 1"
                            livesLabel.textColor = UIColor.red
                            
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
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        Person.frame = CGRect(x: 60, y: 60, width: 44, height: 44)
        self.view.addSubview(Person)
        
        livesLabel.text = "Lives: 3"
        

    
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



//roids += 1


//if roids == 2 { Person.frame = CGRect(x: Person.frame.origin.x, y: Person.frame.origin.y, width: 185, height: 200)
//    Person.image = UIImage(named:"Roblox-1")
//    self.view.addSubview(Person)
    
    
//}

//if roids == 3 { Person.frame = CGRect(x: Person.frame.origin.x, y: Person.frame.origin.y, width: 285, height: 300)
//    self.view.addSubview(Person)
//}

//if roids == 4 { Person.frame = CGRect(x: Person.frame.origin.x, y: Person.frame.origin.y, width: 300, height: 50)
//    self.view.addSubview(Person)
//}

//if roids == 5 {
//    Person.frame = CGRect(x: Person.frame.origin.x, y: Person.frame.origin.y, width: 85, height: 100)
//    self.view.addSubview(Person)
//    Person.image = UIImage(named:"Roblox")
//    if roids == 3 {
//        roids = 1
//    }
    
//}
//}



