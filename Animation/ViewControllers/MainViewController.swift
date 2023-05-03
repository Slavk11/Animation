//
//  ViewController.swift
//  Animation
//
//  Created by Сазонов Станислав on 01.05.2023.
//

import UIKit
import SpringAnimation

final class MainViewController: UIViewController {
    @IBOutlet var nextButton: SpringButton!
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private var animation: Animation!
    
    @IBAction func nextButtonPressed(_ sender: SpringButton) {
        animation = Animation.updateAnimation().first
        
        springAnimationView.animation = animation.name
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        
        springAnimationView.animate()
        updateLabels()
        
    }
    
    private func updateLabels() {
        nextButton.setTitle(animation.buttonTitle, for: .normal)
        animationLabel.text = "Preset: \(animation.name)"
        curveLabel.text = "Curve: \(animation.curve)"
        forceLabel.text = "Force: \(animation.force.description)"
        durationLabel.text = "Duration: \(animation.duration.description)"
        delayLabel.text = "Delay: \(animation.delay.description)"
    }
}
