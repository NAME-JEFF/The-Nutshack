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
    

    @IBOutlet weak var livesLabel: UILabel!
    
    @IBOutlet weak var startView: UIView!
    
    @IBOutlet weak var endView: UIView!
    
    @IBOutlet weak var roidsView: UIView!
    
    @IBOutlet weak var blackView1: UIView!

    @IBOutlet weak var blackView2: UIView!

    @IBOutlet weak var blackView3: UIView!
    
    @IBOutlet weak var blackView4: UIView!
    
    
    @IBOutlet weak var greenView: UIImageView!
    
    
    @IBAction func moveCharacter(_ sender: UIButton) {
//down
                _ = self.greenView.frame
                greenView.frame.origin.y += 20.0
        
        
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

        if determiner == 1 {
            lives -= 1
        
        
            if lives == 3 {
                livesLabel.text = "Lives: 3"
                livesLabel.textColor = UIColor.green

                
            }
            if lives == 2 {
                livesLabel.text = "Lives: 2"
                livesLabel.textColor = UIColor.orange
                greenView.frame = CGRect(x: 60, y: 60, width: 50, height: 50)
                self.view.addSubview(greenView)
                if startView.frame.contains(greenView.frame) {
                lives = 2
                determiner = 0
            }
            }
            
            if lives == 1 {
                livesLabel.text = "Lives: 1"
                livesLabel.textColor = UIColor.red
                greenView.frame = CGRect(x: 60, y: 60, width: 50, height: 50)
                self.view.addSubview(greenView)
                if startView.frame.contains(greenView.frame) {
                lives = 1
                determiner = 0
            }
            }
            
            if lives == 0 {
                print("dead")
 //               performSegue(withIdentifier: "SecondViewController", sender: self)
                greenView.frame = CGRect(x: 60, y: 60, width: 50, height: 50)
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
                greenView.frame = CGRect(x: 60, y: 60, width: 50, height: 50)
                self.view.addSubview(greenView)
            }
        }
            
        
    }




    

    @IBAction func moveCharacter2(_ sender: UIButton) {
//up
        _ = self.greenView.frame
        greenView.frame.origin.y -= 20.0
        
        
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
        
        
        if determiner == 1 {
            lives -= 1
            
            
            if lives == 3 {
                livesLabel.text = "Lives: 3"
                livesLabel.textColor = UIColor.green
                
                
            }
            if lives == 2 {
                livesLabel.text = "Lives: 2"
                livesLabel.textColor = UIColor.orange
                greenView.frame = CGRect(x: 60, y: 60, width: 50, height: 50)
                self.view.addSubview(greenView)
                if startView.frame.contains(greenView.frame) {
                    lives = 2
                    determiner = 0
                }
            }
            
            if lives == 1 {
                livesLabel.text = "Lives: 1"
                livesLabel.textColor = UIColor.red
                greenView.frame = CGRect(x: 60, y: 60, width: 50, height: 50)
                self.view.addSubview(greenView)
                if startView.frame.contains(greenView.frame) {
                    lives = 1
                    determiner = 0
                }
            }
            
            if lives == 0 {
                print("dead")
                //               performSegue(withIdentifier: "SecondViewController", sender: self)
                greenView.frame = CGRect(x: 60, y: 60, width: 50, height: 50)
                self.view.addSubview(greenView)
                livesLabel.text = "DEAD"
                if startView.frame.contains(greenView.frame) {
                    lives = 0
                    determiner = 0
                }
                
                
                let alertController = UIAlertController(title: "You Died", message:
                    "feelsbadman", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default,handler: nil))
                
                self.present(alertController, animated: true, completion: nil)
                
                lives = 3
                greenView.frame = CGRect(x: 60, y: 60, width: 50, height: 50)
                self.view.addSubview(greenView)            }
        }
        
        
    }



    @IBAction func moveCharacter3(_ sender: UIButton) {
//left
        _ = self.greenView.frame
        greenView.frame.origin.x -= 20.0
        
        
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
        
        if determiner == 1 {
            lives -= 1
            
            
            if lives == 3 {
                livesLabel.text = "Lives: 3"
                livesLabel.textColor = UIColor.green
                
                
            }
            if lives == 2 {
                livesLabel.text = "Lives: 2"
                livesLabel.textColor = UIColor.orange
                greenView.frame = CGRect(x: 60, y: 60, width: 50, height: 50)
                self.view.addSubview(greenView)
                if startView.frame.contains(greenView.frame) {
                    lives = 2
                    determiner = 0
                }
            }
            
            if lives == 1 {
                livesLabel.text = "Lives: 1"
                livesLabel.textColor = UIColor.red
                greenView.frame = CGRect(x: 60, y: 60, width: 50, height: 50)
                self.view.addSubview(greenView)
                if startView.frame.contains(greenView.frame) {
                    lives = 1
                    determiner = 0
                }
            }
            
            if lives == 0 {
                print("dead")
                //               performSegue(withIdentifier: "SecondViewController", sender: self)
                greenView.frame = CGRect(x: 60, y: 60, width: 50, height: 50)
                self.view.addSubview(greenView)
                livesLabel.text = "DEAD"
                if startView.frame.contains(greenView.frame) {
                    lives = 0
                    determiner = 0
                }
                
                let alertController = UIAlertController(title: "You Died", message:
                    "REKT", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default,handler: nil))
                
                self.present(alertController, animated: true, completion: nil)
                
                lives = 3
                greenView.frame = CGRect(x: 60, y: 60, width: 50, height: 50)
                self.view.addSubview(greenView)            }
        }
        
        
    }

    @IBAction func moveCharacter4(_ sender: UIButton) {
//right
        _ = self.greenView.frame
        greenView.frame.origin.x += 20.0
        
        
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
        
        
        if determiner == 1 {
            lives -= 1
            
            
            if lives == 3 {
                livesLabel.text = "Lives: 3"
                livesLabel.textColor = UIColor.green
                
                
            }
            if lives == 2 {
                livesLabel.text = "Lives: 2"
                livesLabel.textColor = UIColor.orange
                greenView.frame = CGRect(x: 60, y: 60, width: 50, height: 50)
                self.view.addSubview(greenView)
                if startView.frame.contains(greenView.frame) {
                    lives = 2
                    determiner = 0
                }
            }
            
            if lives == 1 {
                livesLabel.text = "Lives: 1"
                livesLabel.textColor = UIColor.red
                greenView.frame = CGRect(x: 60, y: 60, width: 50, height: 50)
                self.view.addSubview(greenView)
                if startView.frame.contains(greenView.frame) {
                    lives = 1
                    determiner = 0
                }
            }
            
            if lives == 0 {
                print("dead")
                //               performSegue(withIdentifier: "SecondViewController", sender: self)
                greenView.frame = CGRect(x: 60, y: 60, width: 50, height: 50)
                self.view.addSubview(greenView)
                livesLabel.text = "DEAD"
                if startView.frame.contains(greenView.frame) {
                    lives = 0
                    determiner = 0
                }
                
                let alertController = UIAlertController(title: "You Died", message:
                    "RIP LMAO", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default,handler: nil))
                
                self.present(alertController, animated: true, completion: nil)
                
//                lives = 3
                greenView.frame = CGRect(x: 60, y: 60, width: 50, height: 50)
                self.view.addSubview(greenView)            }
        }
        
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        greenView.frame = CGRect(x: 60, y: 60, width: 30, height: 30)
        self.view.addSubview(greenView)
        
        greenView.layer.cornerRadius = 35.0
        
        livesLabel.text = "Lives: 3"
        
greenView.image = UIImage(named:"Roblox-1")
    }


    @IBAction func onPickUp(_ sender: UIButton) {
        if roidsView.frame.contains(greenView.frame)
        {
            greenView.image = UIImage(named:"Roblox-1")
            greenView.frame = CGRect(x: greenView.frame.origin.x, y: greenView.frame.origin.y, width: 25, height: 25)
            self.view.addSubview(greenView)
        }
        
        if endView.frame.contains(greenView.center) {
        greenView.frame = CGRect(x: greenView.frame.origin.x, y: greenView.frame.origin.y, width: 40, height: 40)
            
            greenView.image = UIImage(named:"Roblox")
            
            let alertController = UIAlertController(title: "You Won", message:
                "congratz my dude", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
            
        }
        
        
    }

}




