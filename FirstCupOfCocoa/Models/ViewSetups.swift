//
//  ViewSetups.swift
//  FirstCupOfCocoa
//
//  Created by Stanislav Testov on 27.04.2021.
//
import Spring
struct  SpringViewSetups {
    let animation: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
}
    
   


extension SpringViewSetups {

static func getSetups() -> SpringViewSetups {
       // let setups: [SpringViewSetups]
        let setup: SpringViewSetups
        
        let animationIndex = Int.random(in: 0..<AnimationSetup.setup.presets.count)
        let curveIndex = Int.random(in: 0..<AnimationSetup.setup.curves.count)

        
//        let nextAnimationIndex: Int
//
//        if animationIndex != setup.animation.count {
//            nextAnimationIndex = animationIndex + 1
//        } else {
//            nextAnimationIndex = 0
//        }
        
        setup = SpringViewSetups(
            animation: AnimationSetup.setup.presets[animationIndex],
            curve: AnimationSetup.setup.curves[curveIndex],
            force: Float.random(in: 0...2),
            duration: Float.random(in: 0...3),
            delay: Float.random(in: 0...1))
        
        return setup
        
    }
    

}
