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
    
    @IBOutlet weak var Person: UIImageView!
    @IBOutlet weak var endBackground: UIView!
    @IBOutlet weak var endBackgroundOne: UIView!
    
    
    

    
        
    func viewDidLoad() {
        super.viewDidLoad()
        
        
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
