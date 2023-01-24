//
//  ViewController.swift
//  DiceRollingApp
//
//  Created by Burak Afyonlu on 24.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var rightImage: UIImageView!
    
    let items = [UIImage(named: "dices"), UIImage(named: "dices2"),UIImage(named: "dices3"),UIImage(named: "dices4"),UIImage(named: "dices5"),UIImage(named: "dices6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func zarAtClicked(_ sender: Any) {
        
        let first = Int(arc4random_uniform(6))
        let second = Int(arc4random_uniform(6))
        
        leftImage.image = items[first]
        rightImage.image = items[second]
    }
}

