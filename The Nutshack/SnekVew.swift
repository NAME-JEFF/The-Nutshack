import UIKit

class ViewController: UIViewController, SnakeViewDelegate {
    @IBOutlet var startButton:UIButton?
    var snakeView:SnakeView?
    var timer:Timer?
    
    var snake:Snake?
    var fruit:Point?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.snakeView = SnakeView(frame: self.view.bounds)
        self.snakeView!.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.insertSubview(self.snakeView!, at: 0)
        
        if let view = self.snakeView {
            view.delegate = self
        }
        for direction in [UISwipeGestureRecognizerDirection.right,
                          UISwipeGestureRecognizerDirection.left,
                          UISwipeGestureRecognizerDirection.up,
                          UISwipeGestureRecognizerDirection.down] {
                            let gr = UISwipeGestureRecognizer(target: self, action: Selector(("swipe:")))
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
            assert(false, "This aint gon work fool")
        }
    }
    
    func makeNewFruit() {
        srandomdev()
        let worldSize = self.snake!.worldSize
        var x = 0, y = 0
        while (true) {
            x = Int(arc4random()) % worldSize.width
            y = Int(arc4random()) % worldSize.height
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
        
        self.startButton!.isHidden = true
        let worldSize = WorldSize(width: 24, height: 15)
        self.snake = Snake(inSize: worldSize, length: 2)
        self.makeNewFruit()
        self.timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: Selector(("timerMethod:")), userInfo: nil, repeats: true)
        self.snakeView!.setNeedsDisplay()
    }
    
    func endGame() {
        self.startButton!.isHidden = false
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
