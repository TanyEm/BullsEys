//
//  ViewController.swift
//  BullsEys
//
//  Created by Tanya Tomchuk on 07.02.17.
//  Copyright © 2017 Tanya Tomchuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    var currentValue = 0
    var targetValue = 0
    var score = 0
    var round = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        startNewGame()
        updateLabels()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        let difference = abs(currentValue - targetValue)
        // absolute value
        var points = 100 - difference
        
        let title : String
        if difference == 0 {
            title = "Perfect!"
            points += 100
        } else if difference <= 5 {
            title = "You almost had it!"
            if difference == 1 || difference == 2 {
                points += 50
            }
        } else if difference <= 10 {
            title = "Pretty good!"
        } else {
            title = "Not even close..."
        }
        
        score += points
        
        let message = "The value of the slider is now: \(currentValue)" + "\nThe target value is: \(targetValue)" + "\nThe difference is: \(difference)" + "\nYou scored \(points) points"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default,
                                   handler: {
                                    action in
                                    self.startNewRound()
                                    self.updateLabels()
        })
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func startOver() {
        startNewGame()
        updateLabels()
    }

    
    @IBAction func sliderMoved(_ slider : UISlider) {
        currentValue = lroundf(slider.value)
    }
    
    func startNewRound() {
        round += 1
        currentValue = 50
        targetValue = 1 + Int(arc4random_uniform(100))
        slider.value = Float(currentValue)
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
    
    func startNewGame() {
        round = 0
        score = 0
        startNewRound()
    }
}


