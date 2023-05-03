//
//  Button.swift
//  Animation
//
//  Created by Сазонов Станислав on 01.05.2023.
//


struct Animation {
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    let buttonTitle: String
    
    static func updateAnimation() -> [Animation] {
        
        var testAnimation: [Animation] = []
        
        let names = DataStore.shared.animationNames.shuffled()
        let curves = DataStore.shared.curves.shuffled()
        let forces = DataStore.shared.forces.shuffled()
        let durations = DataStore.shared.durationTime.shuffled()
        let delayTimes = DataStore.shared.delayTimes.shuffled()
        let button = names[1]
        
        let iterationCount = min(
            names.count,
            curves.count,
            durations.count
          
        )
        
        for index in 0..<iterationCount {
            let animation = Animation(
                name: names[index],
                curve: curves[index],
                force: forces[index],
                duration: durations[index],
                delay: delayTimes[index],
                buttonTitle: button
            )
            testAnimation.append(animation)
            
        }
        return testAnimation
    }
}

