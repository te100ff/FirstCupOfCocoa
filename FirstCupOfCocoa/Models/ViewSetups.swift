//
//  ViewSetups.swift
//  FirstCupOfCocoa
//
//  Created by Stanislav Testov on 27.04.2021.
//

struct  Animation {
    let animation: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        """
        Animation: \(animation)
        Curve: \(curve)
        Force: \(String(format: "%.2f", force))
        Duration: \(String(format: "%.2f", duration))
        Delay: \(String(format: "%.2f",delay))
        """
    }
}

extension Animation {
    
    static func getSetups() -> Animation {
        let setup: Animation
        
        let animationIndex = Int.random(in: 0..<AnimationSetup.setup.presets.count)
        let curveIndex = Int.random(in: 0..<AnimationSetup.setup.curves.count)
        
        setup = Animation(
            animation: AnimationSetup.setup.presets[animationIndex],
            curve: AnimationSetup.setup.curves[curveIndex],
            force: Float.random(in: 0...2),
            duration:  Float.random(in: 1...3),
            delay: Float.random(in: 0...1)
        )
        return setup
    }
    
}
