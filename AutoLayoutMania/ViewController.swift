//
//  ViewController.swift
//  AutoLayoutMania
//
//  Created by Jim Thorton on 2020/06/22.
//  Copyright © 2020 Jim Thorton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var stackView: UIStackView!
	@IBOutlet weak var topView: UIView!
	@IBOutlet weak var middleView: UIView!
	@IBOutlet weak var bottomView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
		
		stackView.translatesAutoresizingMaskIntoConstraints = false
		
		NSLayoutConstraint.activate([
			stackView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
			stackView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
			stackView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
			stackView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
		])
		
		NSLayoutConstraint.activate([
			topView.topAnchor.constraint(equalTo: stackView.topAnchor),
			topView.leftAnchor.constraint(equalTo: stackView.leftAnchor),
			topView.rightAnchor.constraint(equalTo: stackView.rightAnchor),
			topView.heightAnchor.constraint(equalToConstant: 120.0),
			topView.bottomAnchor.constraint(equalTo: middleView.topAnchor, constant: -40.0)
		])
		
		NSLayoutConstraint.activate([
			middleView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 40.0),
			middleView.leftAnchor.constraint(equalTo: stackView.leftAnchor),
			middleView.rightAnchor.constraint(equalTo: stackView.rightAnchor),
			middleView.bottomAnchor.constraint(equalTo: bottomView.topAnchor, constant: -40.0)
		])
		
		NSLayoutConstraint.activate([
			bottomView.topAnchor.constraint(equalTo: middleView.bottomAnchor, constant: 40.0),
			bottomView.leftAnchor.constraint(equalTo: stackView.leftAnchor),
			bottomView.rightAnchor.constraint(equalTo: stackView.rightAnchor),
			bottomView.bottomAnchor.constraint(equalTo: stackView.bottomAnchor),
			bottomView.heightAnchor.constraint(equalToConstant: 160.0)
		])
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

/*
1. Width = Height = 200, centering them
2. Setting fixed with or height
3. Setting an aspect ratio
4. 32 points from each side of the view
5. Proportional to view's size
6. In relation to safe area layout guides
*/
