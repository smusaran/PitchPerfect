//
//  ViewController.swift
//  ImagePicker
//
//  Created by Marc Gomez Iranzo on 23/5/17.
//  Copyright © 2017 Marc Gomez Iranzo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func experiment(_ sender: Any){
        let nextController = UIImagePickerController()
        self.present(nextController, animated: true, completion: nil)
    }


}

