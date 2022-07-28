//
//  ViewController.swift
//  Сat toy. Homework6.1
//
//  Created by Дмитрий Соколовский on 25.02.22.
//

import UIKit

let myView = UIView()

class ViewController: UIViewController {
    
    // MARK: Public properties
    
    var screenWidth: CGFloat = 0
    var screenHeight: CGFloat = 0
    var circleWidth: CGFloat = 0
    var circleHeight: CGFloat = 0
    
    // MARK: IBOutlets

    @IBOutlet weak var circleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        getScreenSize()
        setupCircleView()
    }
    
    // MARK: Public Methods
    
    func setupCircleView() {
        circleWidth = 100
        circleHeight = 100
        circleButton.frame = CGRect(x: 100, y: 100, width: circleWidth, height: circleHeight)
        circleButton.backgroundColor = .cyan
        circleButton.layer.cornerRadius = circleButton.frame.width / 2
        circleButton.setTitle("TAP ME!", for: .normal)
        circleButton.tintColor = .red
    }
    
    func getScreenSize() {
        screenWidth = self.view.frame.width
        screenHeight = self.view.frame.height
    }

    // MARK: IBActions
    
    @IBAction func circleButtonPressed(_ sender: Any) {
       
        circleButton.frame.origin.x = CGFloat.random(in: 0...screenWidth-circleWidth)
        circleButton.frame.origin.y = CGFloat.random(in: 20...screenHeight-circleHeight)
        circleButton.backgroundColor = UIColor.random()
    }
}
    // MARK: Extensions
    
    extension CGFloat {
        static func random() -> CGFloat {
            return CGFloat(arc4random()) / CGFloat(UInt32.max)
        }
    }

extension UIColor {
    static func random() -> UIColor {
        return UIColor(
            red:   .random(),
            green: .random(),
            blue:  .random(),
            alpha: 1.0
        )
    }
}


