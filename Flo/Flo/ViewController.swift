//
//  ViewController.swift
//  Flo
//
//  Created by ldjhust on 15/12/16.
//  Copyright © 2015年 ldj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterView: CounterView!
    @IBOutlet weak var counterLabel: UILabel!
    
    // MARK: - view lifecycle
    
    override func viewDidLoad() {
        counterLabel.text = "\(counterView.counter)"
    }
    
    // MARK: - IBActions
    
    @IBAction func btnPushButton(button: PushButtonView) {
        if button.isAddButton {
            if counterView.counter < NoOfGlasses {
                counterView.counter++
            }
        } else {
            if counterView.counter > 0 {
                counterView.counter--
            }
        }
        
        counterLabel.text = "\(counterView.counter)"
    }
}

