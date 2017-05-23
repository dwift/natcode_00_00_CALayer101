//
//  AnimationView.swift
//  natcode_00_00_CALayer101
//
//  Created by Carlyn Maw on 5/14/17.
//  Copyright © 2017 carlynorama. All rights reserved.
//

import UIKit


@IBDesignable
class AnimationView: UIView {
    
    
    func setupLayer() {
        
        //the backgroundcolor property gets set during viewWillLoad/viewDidLoad?
        //apparently can't be updated after. If call setuplayer in parent
        //view did load, can use background color but won't see it in 
        //interfface builder. 
        let easyChangeBackgorund = CAGradientLayer()
        easyChangeBackgorund.frame = bounds
        easyChangeBackgorund.colors = [UIColor.blue.cgColor, UIColor.black.cgColor]
        layer.insertSublayer(easyChangeBackgorund, at: 0)

        
        layer.borderWidth = 100.0
        layer.borderColor = UIColor.red.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowRadius = 10.0
    }
    
    override func draw(_ rect: CGRect) {
        setupLayer()
    }
    
}
