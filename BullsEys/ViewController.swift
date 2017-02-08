//
//  ViewController.swift
//  BullsEys
//
//  Created by Tanya Tomchuk on 07.02.17.
//  Copyright © 2017 Tanya Tomchuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue = 0
    @IBOutlet weak var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentValue = lroundf(slider.value)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        let message = "The value of the slider is now: \(currentValue)"
        let alert = UIAlertController(title: "Hello, World!", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
    @IBAction func sliderMoved(_ slider : UISlider) {
        currentValue = lroundf(slider.value)
    }
}


