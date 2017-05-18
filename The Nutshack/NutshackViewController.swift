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
    var determiner = 0
    
    @IBOutlet weak var endView: UIView!
    
    @IBOutlet weak var backgroundView: UIView!
    
    @IBOutlet weak var roidsView: UIView!
    
    var location = CGPoint(x: 0, y: 0)
    
    @IBOutlet weak var Person: UIImageView!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch : UITouch = touches.first as UITouch!
        location = touch.location(in: self.view)
        
        if backgroundView.frame.contains(Person.center) {
        //    self.present(SecondViewController(), animated: true, completion: nil)
        }
    
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch : UITouch = touches.first as UITouch!
        location = touch.location(in: self.view)
        
        Person.center = location

        
                            if backgroundView.frame.contains(Person.center) {
                                determiner = 1
                                }
                                else {
                                    if startView.frame.contains(Person.center) {
                                    self.determiner = 0
                                    }
                                
                    }

                    if determiner == 1 {
//                        self.present(SecondViewController(), animated: true, completion: nil)
                    print("touched background")
                
                }
                }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        Person.frame = CGRect(x: 290, y: 40, width: 44, height: 44)
        self.view.addSubview(Person)
        

    
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



