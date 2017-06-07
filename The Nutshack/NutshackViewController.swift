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
    
    @IBOutlet weak var blackView15: UIView!
    
    @IBOutlet weak var blackView16: UIView!
    
    @IBOutlet weak var blackView17: UIView!
    
    @IBOutlet weak var blackView18: UIView!
    
    @IBOutlet weak var blackView19: UIView!
    
    @IBOutlet weak var blackView20: UIView!
    
    @IBOutlet weak var blackView21: UIView!
    
    @IBOutlet weak var blackView22: UIView!
    
    @IBOutlet weak var blackView23: UIView!
    
    @IBOutlet weak var blackView24: UIView!
    
    
    
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
        
        
        if blackView15.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView16.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        if blackView17.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView18.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView19.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView20.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        if blackView21.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView22.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView23.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView24.frame.contains(greenView.frame) {
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
                
                greenView.frame = CGRect(x: 90000, y: 90000, width: 0, height: 0)
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
        
        
        if blackView15.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView16.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        if blackView17.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView18.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView19.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView20.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        if blackView21.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView22.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView23.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView24.frame.contains(greenView.frame) {
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
                alertController.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.,default,handler: nil))
                
                self.present(alertController, animated: true, completion: nil)
                
                greenView.frame = CGRect(x: 90000, y: 90000, width: 0, height: 0)
                self.view.addSubview(greenView)
            }
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
        
        
        if blackView15.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView16.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        if blackView17.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView18.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView19.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView20.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        if blackView21.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView22.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView23.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView24.frame.contains(greenView.frame) {
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
                
                greenView.frame = CGRect(x: 90000, y: 90000, width: 0, height: 0)
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
        
        
        if blackView15.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView16.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        if blackView17.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView18.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView19.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView20.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        if blackView21.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView22.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView23.frame.contains(greenView.frame) {
            determiner = 1
        }
        
        
        if blackView24.frame.contains(greenView.frame) {
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
                greenView.frame = CGRect(x: 60, y: 60, width: 30, height: 30)
                self.view.addSubview(greenView)
                livesLabel.text = "DEAD"
                if startView.frame.contains(greenView.frame) {
                    lives = 0
                    determiner = 0
                    
                }
                
                let alertController = UIAlertController(title: "You Died", message:
                    "RIP LMAO", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle,default,handler: nil))
                
                self.present(alertController, animated: true, completion: nil)
                
                greenView.frame = CGRect(x: 90000, y: 90000, width: 0, height: 0)
                self.view.addSubview(greenView)            }
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greenView.frame = CGRect(x: 60, y: 60, width: 30, height: 30)
        self.view.addSubview(greenView)
        
        livesLabel.text = "Lives: 3"
        
        greenView.image = UIImage(named:"Roblox-1")
    }
    
    
    @IBAction func onPickUp(_ sender: UIButton) {
        if roidsView.frame.contains(greenView.frame)
        {
            greenView.image = UIImage(named:"Roblox-1")
            greenView.frame = CGRect(x: greenView.frame.origin.x, y: greenView.frame.origin.y, width: 18, height: 18)
            self.view.addSubview(greenView)
        }
        
        if endView.frame.contains(greenView.center) {
         greenView.frame = CGRect(x: 50, y: 80, width: 800, height: 800)
            
            greenView.image = UIImage(named:"jeff")
            
            let alertController = UIAlertController(title: "You Won", message:
                "congratz my dude", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.,default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
            
        }
        
        
    }
    
}

//            greenView.frame = CGRect(x: greenView.frame.origin.x, y: greenView.frame.origin.y, width: 800, height: 800)

