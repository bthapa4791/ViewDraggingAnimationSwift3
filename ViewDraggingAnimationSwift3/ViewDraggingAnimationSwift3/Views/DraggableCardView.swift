//
//  DraggableCardView.swift
//  ViewDraggingAnimationSwift3
//
//  Created by bimalthapa on 8/21/17.
//  Copyright © 2017 bimalthapa. All rights reserved.
//

import UIKit

class DraggableCardView: UIView {
    
    var panGestureRecognizer: UIPanGestureRecognizer!
    var originPoint: CGPoint!
    var xFromCenter: Float!
    var yFromCenter: Float!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .blue
        
        self.setupView()
        
        panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(beingDragged(_:)))
        
        self.addGestureRecognizer(panGestureRecognizer)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        self.layer.cornerRadius = 4;
        self.layer.shadowOpacity = 0.2;
        self.layer.shadowRadius = 3;
        self.layer.shadowOffset = CGSize(width: 1, height: 1)

    }
    
    func beingDragged(_ gestureRecognizer: UIPanGestureRecognizer) {
        xFromCenter = Float(gestureRecognizer.translation(in: self).x)
        yFromCenter = Float(gestureRecognizer.translation(in: self).y)
        
        switch gestureRecognizer.state {
            case UIGestureRecognizerState.began:
                self.originPoint = self.center
        
            case UIGestureRecognizerState.changed:
                self.center = CGPoint(x: self.originPoint.x + CGFloat(xFromCenter), y: self.originPoint.y + CGFloat(yFromCenter))
            
            case UIGestureRecognizerState.ended:
                UIView.animate(withDuration: 0.3, animations: {() -> Void in
                    self.center = self.originPoint
                    self.transform = CGAffineTransform(rotationAngle: 0)
                })

            default:
            break
            
        }
        
    }
    
    
}
