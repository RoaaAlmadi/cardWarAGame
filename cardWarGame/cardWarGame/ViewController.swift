//
//  ViewController.swift
//  cardWarGame
//
//  Created by student on 2020-10-07.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func DealTapped(_ sender: Any) {
        //Randomaize th enumbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        rightImageView.alpha = 0.5
        
        //Update the img view
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        
    //Compare the random numbers
        if leftNumber > rightNumber{
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber{
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else{
            //tie
        }
    }
    
    
    
}

