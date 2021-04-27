//
//  ViewController.swift
//  FirstCupOfCocoa
//
//  Created by Stanislav Testov on 26.04.2021.
//

import Spring

class ViewController: UIViewController {
    @IBOutlet weak var springView: SpringView!
    
    @IBOutlet weak var springButton: UIButton!
    
    
    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    var setuping = SpringViewSetups.getSetups()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelsContent(from: setuping)
       
    }

    @IBAction func springButtonPressed(_ sender: UIButton) {
        labelsContent(from: setuping)
        
        springView.animation = setuping.animation
        springView.curve = setuping.curve
        springView.force = CGFloat(setuping.force)
        springView.duration = CGFloat(setuping.duration)
        springView.delay = CGFloat(setuping.delay)
        springView.animate()
        
        setuping = SpringViewSetups.getSetups()
        
        springButton.titleLabel?.text = setuping.animation
    }
    
    
    private func labelsContent(from setup: SpringViewSetups) {
        animationLabel.text = setup.animation
        curveLabel.text = setup.curve
        forceLabel.text = String(format: "%.2f", setup.force)
        durationLabel.text = String(format: "%.2f", setup.duration)
        delayLabel.text = String(format: "%.2f", setup.delay)
    }
    
}

