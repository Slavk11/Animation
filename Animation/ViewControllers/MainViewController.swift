//
//  ViewController.swift
//  Animation
//
//  Created by Сазонов Станислав on 01.05.2023.
//

import UIKit
import SpringAnimation

final class MainViewController: UIViewController {
    
    // MARK: - IB Outlets
    
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet var animationLabel: SpringLabel! {
        
        didSet {
            animationLabel.text = animation.description
        }
    }
    
    // MARK: - Private properties
    private var animation = Animation.randomAnimation
 
    // MARK: - IB Actions
    @IBAction func animationButtonPressed(_ sender: UIButton) {
        animationLabel.animation = "zoomOut"
        animationLabel.x = 50
        animationLabel.animate()
        animationLabel.text = animation.description
        
        animationLabel.animateNext { [unowned self] in
            animationLabel.animation = "zoomIn"
            animationLabel.animate()
            
            animationView.animation = animation.name
            animationView.curve = animation.curve
            animationView.duration = animation.duration
            animationView.force = animation.force
            animationView.delay = animation.delay
            animationView.animate()
            
            animation = Animation.randomAnimation
            sender.setTitle("Run \(animation.name)", for: .normal)
        }
    }
}
