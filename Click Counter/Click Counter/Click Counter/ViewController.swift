//
//  ViewController.swift
//  Click Counter
//
//  Created by Marc Gomez Iranzo on 19/5/17.
//  Copyright © 2017 Marc Gomez Iranzo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Label
        let labelIncr = UILabel()
        labelIncr.frame = CGRect.init(x: 220, y: 250, width: 60, height: 60)
        labelIncr.text = "0"
        
        self.view.addSubview(labelIncr) //Relation the label with the content
        self.label = labelIncr //Relation the label from de UILabel with our label text created
        
        // Button Increase
        let buttonIncrease = UIButton()
        buttonIncrease.frame = CGRect.init(x: 150, y: 250, width: 60, height: 60)
        buttonIncrease.setTitle("+", for: .normal)
        buttonIncrease.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(buttonIncrease)
        
        buttonIncrease.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        buttonIncrease.backgroundColor = UIColor.white

        
        // Button Decrease
        let buttonDecrease = UIButton()
        buttonDecrease.frame = CGRect.init(x: 250, y: 250, width: 60, height: 60)
        buttonDecrease.setTitle("-", for: .normal)
        buttonDecrease.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(buttonDecrease)
        
        buttonDecrease.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
        
        buttonDecrease.backgroundColor = UIColor.white

        
    }
    
    func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count)"
        self.label.textColor = UIColor.white
        self.view.backgroundColor = UIColor(red: 0/255, green: 100/255, blue: 0/255, alpha: 1.0)
    }
    
    func decrementCount() {
        self.count = self.count - 1
        self.label.text = "\(self.count)"
        self.label.textColor = UIColor.white
        self.view.backgroundColor = UIColor(red: 100/255, green: 65/255, blue: 67/255, alpha: 1.0)
    }

}

