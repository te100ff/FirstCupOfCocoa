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
    
    
    @IBOutlet weak var infoLabel: UILabel!
    
    
    private var animationSetup = Animation.getSetups()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelAndButtonContentLogic()
    }

    @IBAction func springButtonPressed(_ sender: SpringButton) {
        viewAnimation(for: springView)
        
        labelAndButtonContentLogic()
        
        sender.animation = "pop"
        sender.animate()
    }
    
    private func labelAndButtonContentLogic() {
        infoLabel.text = animationSetup.description
        animationSetup = Animation.getSetups()
        springButton.setTitle("Next \(animationSetup.animation)", for: .normal)
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

