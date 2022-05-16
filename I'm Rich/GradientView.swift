//
//  GradientView.swift
//  I'm Rich
//
//  Created by inGM on 16.05.2022.
//

import UIKit

// make protocol for retrive data of color to the ViewController

protocol loadingItemDelegate {
    var color: Int { get set }
}

// MARK: make extention of UIColor to get random colors for gradient background.

extension UIColor {
    static var random: UIColor {
        return .init(hue: .random(in: 0...1), saturation: 1, brightness: 1, alpha: 1)
    }
}

// MARK: customise gradient view

@IBDesignable

// Make class for Gradient view

class GradientView: UIView {
    
    var viewControllerDelegate = ViewController()
    
    @IBInspectable var topColor: UIColor = .systemMint
    @IBInspectable var midlleColor: UIColor = .systemTeal
    @IBInspectable var bottomColor: UIColor = .systemCyan
    
    var startPointX: CGFloat = 0.0
    var startPointY: CGFloat = 0.0
    var endPointX: CGFloat = 1.0
    var endPointY: CGFloat = 1.0

    
    override func layoutSubviews() {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            topColor.cgColor,
            midlleColor.cgColor,
            bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: startPointX, y: startPointY)
        gradientLayer.endPoint = CGPoint(x: endPointX, y: endPointY)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
        
        // Change gradients color with time interval 2 sec
        
        Timer.scheduledTimer(withTimeInterval: 2, repeats: true, block: { _ in
            gradientLayer.colors = [UIColor.random.cgColor, UIColor.random.cgColor, UIColor.random.cgColor]
        })
    
    }
}



