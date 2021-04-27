//
//  ViewController.swift
//  FirstCupOfCocoa
//
//  Created by Stanislav Testov on 26.04.2021.
//

import Spring

class MainViewController: UIViewController {
    @IBOutlet weak var springView: SpringView!
    
    @IBOutlet weak var springButton: SpringButton!
    
    
    @IBOutlet weak var animationLabel: SpringLabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    private var animationSetup = SpringViewSetups.getSetups()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelsContent(from: animationSetup)
        springButton.setTitle("Next \(animationSetup.animation)", for: .normal)
       
    }

    @IBAction func springButtonPressed(_ sender: SpringButton) {
        labelsContent(from: animationSetup)
        
        springView.animation = animationSetup.animation
        springView.curve = animationSetup.curve
        springView.force = CGFloat(animationSetup.force)
        springView.duration = CGFloat(animationSetup.duration)
        springView.delay = CGFloat(animationSetup.delay)
        springView.animate()
        
        animationLabel.animation = "shake"
        animationLabel.duration = 4
        animationLabel.animate()
        
        animationSetup = SpringViewSetups.getSetups()
        
        sender.setTitle("Next \(animationSetup.animation)", for: .normal)
        sender.animation = "pop"
        sender.animate()
    }
    
    
    private func labelsContent(from setup: SpringViewSetups) {
        animationLabel.text = "Animation: \(setup.animation)"
        curveLabel.text = "Curve: \(setup.curve)"
        forceLabel.text = "Force: " + String(format: "%.2f", setup.force)
        durationLabel.text = "Duration: " + String(format: "%.2f", setup.duration)
        delayLabel.text = "Delay: " + String(format: "%.2f", setup.delay)
    }
    
}

