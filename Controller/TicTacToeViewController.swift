//
//  TicTacToeViewController.swift
//  SwissKnife
//
//  Created by Georgios on 2018-04-12.
//  Copyright © 2018 Georgios. All rights reserved.
//

import UIKit

class TicTacToeViewController: UIViewController {
    
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBOutlet weak var Button10: UIButton!
    @IBOutlet weak var Button11: UIButton!
    @IBOutlet weak var Button12: UIButton!
    @IBOutlet weak var Button20: UIButton!
    @IBOutlet weak var Button21: UIButton!
    @IBOutlet weak var Button22: UIButton!
    @IBOutlet weak var Button30: UIButton!
    @IBOutlet weak var Button31: UIButton!
    @IBOutlet weak var Button32: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnPressed1(_ sender: UIButton) {
        print("pressed 1.0")
    }
    
    @IBAction func btnPressed2(_ sender: UIButton) {
        print("pressed 1.1")
    }
    
    @IBAction func btnPressed3(_ sender: UIButton) {
        print("pressed 1.3")
    }
    
    @IBAction func btnPressed4(_ sender: UIButton) {
        print("pressed 2.0")
    }
    
    @IBAction func btnPressed5(_ sender: UIButton) {
        print("pressed 2.1")
    }
    
    @IBAction func btnPressed6(_ sender: UIButton) {
        print("pressed 2.2")
    }
    
    @IBAction func btnPressed7(_ sender: UIButton) {
        print("pressed 3.0")
    }
    
    @IBAction func btnPressed8(_ sender: UIButton) {
        print("pressed 3.1")
    }
    
    @IBAction func btnPressed9(_ sender: UIButton) {
        print("pressed 3.2")
    }
    
    
}
