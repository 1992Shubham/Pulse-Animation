//
//  ViewController.swift
//  PulsingAnimation
//
//  Created by SHUBHAM AGARWAL on 21/03/19.
//  Copyright © 2019 SHUBHAM AGARWAL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnorng: UIButton!
    @IBOutlet weak var btnred: UIButton!
    @IBOutlet weak var btnblue: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     cornerRadius(view1: btnorng, radius: 17)
        cornerRadius(view1: btnred, radius: 17)
        cornerRadius(view1: btnblue, radius: 17)

    }
    
    
    func cornerRadius(view1: UIView, radius: CGFloat = 10) {
        view1.layer.cornerRadius = radius
    }
    
    func showAnimation() {
        let pulse = PulseAnimation(numberOfPulse: 15, radius: 200, postion: self.view.center)
        pulse.animationDuration = 1.0
        pulse.backgroundColor = #colorLiteral(red: 0.05282949957, green: 0.5737867104, blue: 1, alpha: 1)
        self.view.layer.insertSublayer(pulse, below: self.view.layer)
    }

    @IBAction func onClickRedButton(_ sender: UIButton) {
        let pulse = PulseAnimation(numberOfPulse: Float.infinity, radius: 150, postion: sender.center)
        pulse.animationDuration = 1.0
        pulse.backgroundColor = #colorLiteral(red: 0.8993218541, green: 0.1372507513, blue: 0.2670814395, alpha: 1)
        self.view.layer.insertSublayer(pulse, below: self.view.layer)
    }
    
    @IBAction func onClickOrange(_ sender: UIButton) {
        let pulse = PulseAnimation(numberOfPulse: Float.infinity, radius: 120, postion: sender.center)
        pulse.animationDuration = 1.2
        pulse.backgroundColor = #colorLiteral(red: 1, green: 0.3653766513, blue: 0.1507387459, alpha: 1)
        self.view.layer.insertSublayer(pulse, below: self.view.layer)
    }
    @IBAction func onClickBlue(_ sender: UIButton) {
        let pulse = PulseAnimation(numberOfPulse: Float.infinity, radius: 100, postion: sender.center)
        pulse.animationDuration = 1.0
        pulse.backgroundColor = #colorLiteral(red: 0.2247976189, green: 0.4235115114, blue: 1, alpha: 1)
        self.view.layer.insertSublayer(pulse, below: self.view.layer)
        let pulse1 = PulseAnimation(numberOfPulse: 15, radius: 200, postion: sender.center)
        pulse1.animationDuration = 1.4
        pulse1.backgroundColor = #colorLiteral(red: 1, green: 0.3653766513, blue: 0.1507387459, alpha: 1)
        self.view.layer.insertSublayer(pulse1, below: self.view.layer)
    }
}

