//
//  ViewController.swift
//  test
//
//  Created by kuroro on 16/09/2020.
//  Copyright © 2020 lucasam. All rights reserved.
//

import UIKit
import SweetBubblesTransition

class ViewController: AnimationController {
    private let viewController2 = ViewController2.instantiate()

    @IBAction func change(_ sender: Any) {
        startTransition(to: viewController2, animation: 3, bubbleController: 2.5)
    }
}

