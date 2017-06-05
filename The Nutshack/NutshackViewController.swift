//
//  NutshackViewController.swift
//  The Nutshack
//
//  Created by student8 on 4/28/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit

class NutshackViewController: UIViewController {
    
    var lives = 3
    var determiner = 0
    
    @IBOutlet weak var personTouchZone: UIView!
    
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
    
    @IBOutlet weak var greenView: UIView!
    
    
    @IBAction func moveCharacter(_ sender: UIButton) {
//down
                _ = self.greenView.frame
                greenView.frame.origin.y += 30.0
        
        if topBlack.frame.contains(greenView.frame) {
            determiner = 1
        }

        
        if blackView1.frame.contains(greenView.frame) {
            determiner = 1
        }

        
        if blackView2.frame.contains(greenView.frame) {
            determiner = 1
        }

        
        if blackView3.frame.contains(greenView.frame) {
            determiner = 1
        }

        
        if blackView4.frame.contains(greenView.frame) {
            determiner = 1
        }

        
        if blackView5.frame.contains(greenView.frame) {
            determiner = 1
        }

        
        if blackView6.frame.contains(greenView.frame) {
            determiner = 1
        }

        
        if blackView7.frame.contains(greenView.frame) {
            determiner = 1
        }

        if blackView8.frame.contains(greenView.frame) {
            determiner = 1
        }

        
        if blackView9.frame.contains(greenView.frame) {
            determiner = 1
        }

        
        if blackView10.frame.contains(greenView.frame) {
            determiner = 1
        }
 
        
        if blackView11.frame.contains(greenView.frame) {
            determiner = 1
        }

        
        if blackView12.frame.contains(greenView.frame) {
            determiner = 1
        }

        
        if blackView13.frame.contains(greenView.frame) {
            determiner = 1
        }

        
        if blackView14.frame.contains(greenView.frame) {
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
                greenView.frame = CGRect(x: 60, y: 60, width: 30, height: 30)
                self.view.addSubview(greenView)
                if startView.frame.contains(greenView.frame) {
                lives = 2
                determiner = 0
            }
            }
            
            if lives == 1 {
                livesLabel.text = "Lives: 1"
                livesLabel.textColor = UIColor.red
                greenView.frame = CGRect(x: 60, y: 60, width: 30, height: 30)
                self.view.addSubview(greenView)
                if startView.frame.contains(greenView.frame) {
                lives = 1
                determiner = 0
            }
            }
            
            if lives == 0 {
                print("dead")
 //               performSegue(withIdentifier: "SecondViewController", sender: self)
                greenView.frame = CGRect(x: 60, y: 60, width: 30, height: 30)
                self.view.addSubview(greenView)
                livesLabel.text = "DEAD"
                if startView.frame.contains(greenView.frame) {
                lives = 0
                determiner = 0
                }
                
                let alertController = UIAlertController(title: "You Died", message:
                    "exdee", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default,handler: nil))
                
                self.present(alertController, animated: true, completion: nil)
                
                lives = 3
                greenView.frame = CGRect(x: 60, y: 60, width: 30, height: 30)
                self.view.addSubview(greenView)
            }
        }
            
        
    }




    

    @IBAction func moveCharacter2(_ sender: UIButton) {
//up
        _ = self.greenView.frame
        greenView.frame.origin.y -= 30.0
        
        if topBlack.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView1.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView2.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView3.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView4.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView5.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView6.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView7.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        if blackView8.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView9.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView10.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView11.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView12.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView13.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView14.frame.contains(greenView.frame) {
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
                greenView.frame = CGRect(x: 60, y: 60, width: 30, height: 30)
                self.view.addSubview(greenView)
                if startView.frame.contains(greenView.frame) {
                    lives = 2
                    determiner = 0
                }
            }
            
            if lives == 1 {
                livesLabel.text = "Lives: 1"
                livesLabel.textColor = UIColor.red
                greenView.frame = CGRect(x: 60, y: 60, width: 30, height: 30)
                self.view.addSubview(greenView)
                if startView.frame.contains(greenView.frame) {
                    lives = 1
                    determiner = 0
                }
            }
            
            if lives == 0 {
                print("dead")
                //               performSegue(withIdentifier: "SecondViewController", sender: self)
                greenView.frame = CGRect(x: 60, y: 60, width: 30, height: 30)
                self.view.addSubview(greenView)
                livesLabel.text = "DEAD"
                if startView.frame.contains(greenView.frame) {
                    lives = 0
                    determiner = 0
                }
                
                
                let alertController = UIAlertController(title: "You Died", message:
                    "feelsbadman", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.,,default,handler: nil))
                
                self.present(alertController, animated: true, completion: nil)
                
                lives = 3
                greenView.frame = CGRect(x: 60, y: 60, width: 30, height: 30)
                self.view.addSubview(greenView)            }
        }
        
        
    }



    @IBAction func moveCharacter3(_ sender: UIButton) {
//left
        _ = self.greenView.frame
        greenView.frame.origin.x -= 30.0
        
        if topBlack.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView1.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView2.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView3.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView4.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView5.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView6.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView7.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        if blackView8.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView9.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView10.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView11.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView12.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView13.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView14.frame.contains(greenView.frame) {
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
                greenView.frame = CGRect(x: 60, y: 60, width: 30, height: 30)
                self.view.addSubview(greenView)
                if startView.frame.contains(greenView.frame) {
                    lives = 2
                    determiner = 0
                }
            }
            
            if lives == 1 {
                livesLabel.text = "Lives: 1"
                livesLabel.textColor = UIColor.red
                greenView.frame = CGRect(x: 60, y: 60, width: 30, height: 30)
                self.view.addSubview(greenView)
                if startView.frame.contains(greenView.frame) {
                    lives = 1
                    determiner = 0
                }
            }
            
            if lives == 0 {
                print("dead")
                //               performSegue(withIdentifier: "SecondViewController", sender: self)
                greenView.frame = CGRect(x: 60, y: 60, width: 30, height: 30)
                self.view.addSubview(greenView)
                livesLabel.text = "DEAD"
                if startView.frame.contains(greenView.frame) {
                    lives = 0
                    determiner = 0
                }
                
                let alertController = UIAlertController(title: "You Died", message:
                    "REKT", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.,default,handler: nil))
                
                self.present(alertController, animated: true, completion: nil)
                
                lives = 3
                greenView.frame = CGRect(x: 60, y: 60, width: 30, height: 30)
                self.view.addSubview(greenView)            }
        }
        
        
    }

    @IBAction func moveCharacter4(_ sender: UIButton) {
//right
        _ = self.greenView.frame
        greenView.frame.origin.x += 30.0
        
        if topBlack.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView1.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView2.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView3.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView4.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView5.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView6.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView7.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        if blackView8.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView9.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView10.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView11.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView12.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView13.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView14.frame.contains(greenView.frame) {
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
                greenView.frame = CGRect(x: 60, y: 60, width: 30, height: 30)
                self.view.addSubview(greenView)
                if startView.frame.contains(greenView.frame) {
                    lives = 2
                    determiner = 0
                }
            }
            
            if lives == 1 {
                livesLabel.text = "Lives: 1"
                livesLabel.textColor = UIColor.red
                greenView.frame = CGRect(x: 60, y: 60, width: 30, height: 30)
                self.view.addSubview(greenView)
                if startView.frame.contains(greenView.frame) {
                    lives = 1
                    determiner = 0
                }
            }
            
            if lives == 0 {
                print("dead")
                //               performSegue(withIdentifier: "SecondViewController", sender: self)
                greenView.frame = CGRect(x: 60, y: 60, width: 30, height: 30)
                self.view.addSubview(greenView)
                livesLabel.text = "DEAD"
                if startView.frame.contains(greenView.frame) {
                    lives = 0
                    determiner = 0
                }
                
                let alertController = UIAlertController(title: "You Died", message:
                    "RIP LMAO", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.,default,handler: nil))
                
                self.present(alertController, animated: true, completion: nil)
                
//                lives = 3
                greenView.frame = CGRect(x: 60, y: 60, width: 30, height: 30)
                self.view.addSubview(greenView)            }
        }
        
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        greenView.frame = CGRect(x: 60, y: 60, width: 30, height: 30)
        self.view.addSubview(greenView)
        
        greenView.layer.cornerRadius = 35.0
        
        livesLabel.text = "Lives: 3"
        
//greenView = UIImage(named:"Roblox-1")
    }


    @IBAction func onPickUp(_ sender: UIButton) {
        if roidsView.frame.contains(greenView.frame)
        {
//            greenView.image = UIImage(named:"Roblox-1")
            greenView.frame = CGRect(x: greenView.frame.origin.x, y: greenView.frame.origin.y, width: 15, height: 15)
            self.view.addSubview(greenView)
        }
        
        if endView.frame.contains(greenView.center) {
        greenView.frame = CGRect(x: greenView.frame.origin.x, y: greenView.frame.origin.y, width: 50, height: 50)
            
            let alertController = UIAlertController(title: "You Won", message:
                "congratz my dude", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.,default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
            
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



