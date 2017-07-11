//
//  VRView.swift
//  VowandWishes
//
//  Created by vikram singh rajpoot on 09/07/17.
//  Copyright © 2017 Mobulous. All rights reserved.
//

import UIKit

extension UIView {
    
    func makeBlurView(){
        if !UIAccessibilityIsReduceTransparencyEnabled() {
            self.backgroundColor = UIColor.clearColor()
            let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            //always fill the view
            blurEffectView.frame = self.bounds
            blurEffectView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
            self.addSubview(blurEffectView) //if you have more UIViews, use an insertSubview API to place it where needed
        } else {
            self.backgroundColor = UIColor.blackColor()
        }
    }
    
}
