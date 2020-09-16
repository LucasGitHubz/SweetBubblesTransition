//
//  AnimationViewController.swift
//  SweetBubblesTransition
//
//  Created by kuroro on 16/09/2020.
//  Copyright © 2020 lucasam. All rights reserved.
//

import UIKit

public class AnimationController: UIViewController {
    private let bubbleController = BubbleViewController.instantiate()
    // MARK: Child gestion
    public func startTransition(to viewController: UIViewController, animation speed: Double, bubbleController deleteItAt: Double) {
        add(viewController)
        add(bubbleController)
        
        viewController.view.layer.opacity = 0
        
        UIView.animate(withDuration: speed,
                       delay: 0,
                       animations: { [] in
                        viewController.view.layer.opacity = 1
        })
        
        DispatchQueue.main.asyncAfter(deadline: .now() + deleteItAt) {
            self.bubbleController.remove()
        }
    }
}
