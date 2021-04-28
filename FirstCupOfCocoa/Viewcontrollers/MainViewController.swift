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
        labelAndButtonContentLogic()
    }

    @IBAction func springButtonPressed(_ sender: SpringButton) {
        viewAnimation(for: springView)
        
        labelAndButtonContentLogic()
        
        animationLabel.animation = "swing"
        animationLabel.duration = 2
        animationLabel.delay = 2
        animationLabel.animate()
        
        sender.animation = "pop"
        sender.animate()
    }
    
    private func labelAndButtonContentLogic() {
        labelsContent(from: animationSetup)
        animationSetup = SpringViewSetups.getSetups()
        springButton.setTitle("Next \(animationSetup.animation)", for: .normal)
    }
    
    // MARK: - View animation and sublabels setup
    private func labelsContent(from setup: SpringViewSetups) {
        animationLabel.text = "Animation: \(setup.animation)"
        curveLabel.text = "Curve: \(setup.curve)"
        forceLabel.text = "Force: " + String(format: "%.2f", setup.force)
        durationLabel.text = "Duration: " + String(format: "%.2f", setup.duration)
        delayLabel.text = "Delay: " + String(format: "%.2f", setup.delay)
    }
    
    private func viewAnimation(for view: SpringView) {
        view.animation = animationSetup.animation
        view.curve = animationSetup.curve
        view.force = CGFloat(animationSetup.force)
        view.duration = CGFloat(animationSetup.duration)
        view.delay = CGFloat(animationSetup.delay)
        view.animate()
    }
    
}

