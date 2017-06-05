//
//  SecondViewController.swift
//  The Nutshack
//
//  Created by student8 on 4/28/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.

import UIKit

protocol SnakeViewDelegate {
    func snakeForSnakeView(view:SnakeView) -> Snake?
    func pointOfFruitForSnakeView(view:SnakeView) -> Point?
}

class SnakeView : UIView {
    var delegate:SnakeViewDelegate?
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.backgroundColor = UIColor.white
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        guard let snake:Snake = delegate?.snakeForSnakeView(view: self) else {
            return
        }
        
        let worldSize = snake.worldSize
        if worldSize.width <= 0 || worldSize.height <= 0 {
            return
        }
        let w = Int(Float(self.bounds.size.width) / Float(worldSize.width))
        let h = Int(Float(self.bounds.size.height) / Float(worldSize.height))
        
        UIColor.black.set()
        let points = snake.points
        for point in points {
            let rect = CGRect(x: point.x * w, y: point.y * h, width: w, height: h)
            UIBezierPath(rect: rect).fill()
        }
        
        guard let fruit = delegate?.pointOfFruitForSnakeView(view: self) else {
            return
        }
        UIColor.red.set()
        let rect = CGRect(x: fruit.x * w, y: fruit.y * h, width: w, height: h)
        UIBezierPath(ovalInRect: rect).fill()
    }
}
