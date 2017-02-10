//
//  AboutViewController.swift
//  BullsEys
//
//  Created by Tanya Tomchuk on 10.02.17.
//  Copyright © 2017 Tanya Tomchuk. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close() {
            dismiss(animated: true, completion: nil)
    }
}
