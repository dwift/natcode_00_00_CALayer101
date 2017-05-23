//
//  ViewController.swift
//  natcode_00_00_CALayer101
//
//  Created by Carlyn Maw on 5/12/17.
//  Copyright © 2017 carlynorama. All rights reserved.
//

import UIKit

// code from https://developer.apple.com/reference/quartzcore/cashapelayer
// code from

class ViewController: UIViewController {

    
    @IBOutlet weak var dwiftView: AnimationView!
    
    var dwiftLayer:CALayer {
        get { return dwiftView.layer }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //dwiftView.setupLayer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

