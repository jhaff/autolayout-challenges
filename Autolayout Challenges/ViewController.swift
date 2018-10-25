//
//  ViewController.swift
//  Autolayout Challenges
//
//  Created by Jacob Haff on 10/25/18.
//  Copyright © 2018 Jacob Haff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tealView = UIView()
        tealView.backgroundColor = UIColor.green
        tealView.translatesAutoresizingMaskIntoConstraints = false
        
        let tealTop = NSLayoutConstraint(item: tealView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 0)
        
        let tealHeight = NSLayoutConstraint(item: tealView, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.5, constant: 0)
        
        let tealLeading = NSLayoutConstraint(item: tealView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 0)
        
        let tealWidth = NSLayoutConstraint(item: tealView, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 1.0, constant: 0)
        
        self.view.addSubview(tealView) //before constraints activated req
        
        NSLayoutConstraint.activate([tealTop,tealWidth,tealHeight,tealLeading])
        
        
    }


}

