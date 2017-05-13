//
//  ViewController.swift
//  natcode_00_00_CALayer101
//
//  Created by Carlyn Maw on 5/12/17.
//  Copyright © 2017 carlynorama. All rights reserved.
//

import UIKit

// code from https://developer.apple.com/reference/quartzcore/cashapelayer

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let shapeLayer = CAShapeLayer()
//        let width = 400
//        let height = 400
        shapeLayer.frame = CGRect(x: 0, y: 0,
                                  width: 400, height: 400)
        
        let path = CGMutablePath()
        
        stride(from: 0, to: CGFloat.pi * 2, by: CGFloat.pi / 6).forEach {
            angle in
            var transform  = CGAffineTransform(rotationAngle: angle)
                .concatenating(CGAffineTransform(translationX: 200, y: 200))
            
            let petal = CGPath(ellipseIn: CGRect(x: -20, y: 0, width: 40, height: 100),
                               transform: &transform)
            
            path.addPath(petal)
        }
        
        shapeLayer.path = path
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.fillColor = UIColor.yellow.cgColor
        shapeLayer.fillRule = kCAFillRuleEvenOdd
        
        self.view.layer.addSublayer(shapeLayer)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

