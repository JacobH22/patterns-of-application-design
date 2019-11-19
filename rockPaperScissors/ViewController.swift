//
//  ViewController.swift
//  rockPaperScissors
//
//  Created by Jacob Hunsaker on 11/18/19.
//  Copyright © 2019 Jacob Hunsaker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        resultLabel.text = "Let's play!"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var rockSwitch: UISwitch!
    @IBOutlet weak var paperSwitch: UISwitch!
    @IBOutlet weak var scissorSwitch: UISwitch!
    
    @IBOutlet weak var opponentImage: UIImageView!
    
    @IBAction func rockPressed(_ sender: Any) {
        paperSwitch.isOn = false
        scissorSwitch.isOn = false
        
    
    }
    @IBAction func paperPressed(_ sender: Any) {
        rockSwitch.isOn = false
        scissorSwitch.isOn = false
    }
    @IBAction func scissorsPressed(_ sender: Any) {
        paperSwitch.isOn = false
        rockSwitch.isOn = false
    }
    
    @IBAction func playButton(_ sender: Any) {
        let randomNumber = arc4random_uniform(3) + 1
        if randomNumber == 1 {
            opponentImage.image = UIImage(named: "rock.jpeg")
        }  else if randomNumber == 2 {
                opponentImage.image = UIImage(named: "paper.jpeg")
        } else if randomNumber == 3 {
            opponentImage.image = UIImage(named: "scissors.jpeg")
            
            
    }
    
}
}
