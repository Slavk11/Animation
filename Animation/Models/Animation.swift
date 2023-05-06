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
    
    var description: String {
              """
              preset: \(name)
              curve: \(curve)
              force: \(String(format: "%.02f", force))
              duration: \(String(format: "%.02f", duration))
              delay: \(String(format: "%.02f", delay))
              """
    }
    
    static var randomAnimation: Animation {
        Animation(
            name: DataStore.shared.animations.randomElement()?.rawValue ?? "wobble",
            curve: DataStore.shared.animations.randomElement()?.rawValue ?? "easyIN",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 0.8...1.6),
            delay: 1
        )
    }
}

