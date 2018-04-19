//
//  TicTacToeViewController.swift
//  SwissKnife
//
//  Created by Georgios on 2018-04-12.
//  Copyright © 2018 Georgios. All rights reserved.
//

import UIKit

class TicTacToeViewController: UIViewController {
    
    var serverName = ""
    
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
    
    @IBOutlet weak var serverTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func newGameBtn(_ sender: UIButton) {
        print("play new game")
    }
    
    @IBAction func joinGameBtn(_ sender: UIButton) {
        
        serverName = self.serverTextField.text!
        
        print("Joining \(serverName)")
    }
    
    
    @IBAction func pressPosition(_ sender: UIButton) {
        guard let button = sender as? UIButton else {
            return
        }
        
        switch button.tag {
        case 1 : print("1")
            return
        case 2: print("2")
            return
        case 3: print("3")
            return
        case 4: print("4")
            return
        case 5: print("5")
            return
        case 6: print("6")
            return
        case 7: print("7")
            return
        case 8: print("8")
            return
        case 9: print("9")
            return
        default: print("no such thing")
            return
        }
    }
    
    
}
