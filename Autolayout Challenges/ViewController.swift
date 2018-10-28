//
//  ViewController.swift
//  Autolayout Challenges
//
//  Created by Jacob Haff on 10/25/18.
//  Copyright © 2018 Jacob Haff. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

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
//
        NSLayoutConstraint.activate([tealView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                                     tealView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),])
        //


        let blueView = UIView()
        blueView.backgroundColor = UIColor.blue
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(blueView)
        
        NSLayoutConstraint.activate([blueView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                                     blueView.topAnchor.constraint(equalTo: self.view.centerYAnchor),
                                     blueView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5),
                                     blueView.widthAnchor.constraint(equalTo: self.view.widthAnchor),
                                     ])
    }
}

class ViewController: UIViewController { //for the second challenges
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tealView = UIView()
        tealView.backgroundColor = UIColor.green
        tealView.translatesAutoresizingMaskIntoConstraints = false
        
        let tealTop = NSLayoutConstraint(item: tealView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 0)
        
        let tealHeight = NSLayoutConstraint(item: tealView, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1/3, constant: 0)
        
        let tealLeading = NSLayoutConstraint(item: tealView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 0)
        
        let tealWidth = NSLayoutConstraint(item: tealView, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 1.0, constant: 0)
        
        self.view.addSubview(tealView) //before constraints activated req
        
        NSLayoutConstraint.activate([tealTop,tealWidth,tealHeight,tealLeading])
        //
        NSLayoutConstraint.activate([tealView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                                     tealView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),])
        //
        
        
        let blueView = UIView()
        blueView.backgroundColor = UIColor.blue
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(blueView)
        
        NSLayoutConstraint.activate([blueView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                                     blueView.topAnchor.constraint(equalTo: tealView.bottomAnchor),
                                     blueView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 2/3),
                                     blueView.widthAnchor.constraint(equalTo: self.view.widthAnchor),
                                     ])
    }
}
