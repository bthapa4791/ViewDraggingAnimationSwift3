//
//  AppConstants.swift
//  ViewDraggingAnimationSwift3
//
//  Created by bimalthapa on 8/21/17.
//  Copyright © 2017 bimalthapa. All rights reserved.
//

import UIKit

let CARD_HEIGHT: CGFloat = getScreenSize().height - (getScreenSize().height * 0.6)
let CARD_WIDTH: CGFloat = getScreenSize().width - (getScreenSize().width * 0.1)

func getScreenSize()->CGSize {
    
    let screenSize = UIScreen.main.bounds.size
    
    return screenSize
}

