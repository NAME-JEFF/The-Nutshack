//
//  SnekVew.swift
//  The Nutshack
//
//  Created by student8 on 6/5/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit

class SnekVew: UIViewController, SnakeViewDelegate {
    @IBOutlet weak var Start: UIButton!
    
    var snake:Snake?
    var growfood:Point?

    override func viewDidLoad() {
        super.viewDidLoad()



        self.SnekVew = SnakeView(frame: self.view.bounds)
        self.SnekVew!.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        self.view.insertSubview(self.snakeView!, atIndex: 0)
        
        if let view = self.snakeView {
            view.delegate = self
        }
        for direction in [UISwipeGestureRecognizerDirection.right,
                          UISwipeGestureRecognizerDirection.left,
                          UISwipeGestureRecognizerDirection.up,
                          UISwipeGestureRecognizerDirection.down] {
                            let gr = UISwipeGestureRecognizer(target: self, action: "swipe:")
                            gr.direction = direction
                            self.view.addGestureRecognizer(gr)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func swipe (gr:UISwipeGestureRecognizer) {
        let direction = gr.direction
        switch direction {
        case UISwipeGestureRecognizerDirection.right:
            if (self.snake?.changeDirection(newDirection: Direction.right) != nil) {
                self.snake?.lockDirection()
            }
        case UISwipeGestureRecognizerDirection.left:
            if (self.snake?.changeDirection(newDirection: Direction.left) != nil) {
                self.snake?.lockDirection()
            }
        case UISwipeGestureRecognizerDirection.up:
            if (self.snake?.changeDirection(newDirection: Direction.up) != nil) {
                self.snake?.lockDirection()
            }
        case UISwipeGestureRecognizerDirection.down:
            if (self.snake?.changeDirection(newDirection: Direction.down) != nil) {
                self.snake?.lockDirection()
            }
        default:
            assert(false, "This could not happen")
        }
    }
    
    func makeNewFruit() {
        srandomdev()
        let worldSize = self.snake!.worldSize
        var x = 0, y = 0
        while (true) {
            x = random() % worldSize.width
            y = random() % worldSize.height
            var isBody = false
            for p in self.snake!.points {
                if p.x == x && p.y == y {
                    isBody = true
                    break
                }
            }
            if !isBody {
                break
            }
        }
        self.fruit = Point(x: x, y: y)
    }
    
    func startGame() {
        if (self.timer != nil) {
            return
        }
        
        self.startButton!.hidden = true
        let worldSize = WorldSize(width: 24, height: 15)
        self.snake = Snake(inSize: worldSize, length: 2)
        self.makeNewFruit()
        self.timer = Timer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "timerMethod:", userInfo: nil, repeats: true)
        self.snakeView!.setNeedsDisplay()
    }
    
    func endGame() {
        self.startButton!.hidden = false
        self.timer!.invalidate()
        self.timer = nil
    }
    
    func timerMethod(timer:Timer) {
        self.snake?.move()
        let headHitBody = self.snake?.isHeadHitBody()
        if headHitBody == true {
            self.endGame()
            return
        }
        
        let head = self.snake?.points[0]
        if head?.x == self.fruit?.x &&
            head?.y == self.fruit?.y {
            self.snake!.increaseLength(inLength: 2)
            self.makeNewFruit()
        }
        
        self.snake?.unlockDirection()
        self.snakeView!.setNeedsDisplay()
    }
    
    @IBAction func start(sender:AnyObject) {
        self.startGame()
    }
    
    func snakeForSnakeView(view:SnakeView) -> Snake? {
        return self.snake
    }
    func pointOfFruitForSnakeView(view:SnakeView) -> Point? {
        return self.fruit
    }
}
