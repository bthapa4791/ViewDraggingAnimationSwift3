//
//  ViewController.swift
//  ViewDraggingAnimationSwift3
//
//  Created by bimalthapa on 8/21/17.
//  Copyright © 2017 bimalthapa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = .white
        self.setupView()
    }
    
    func setupView() {
        let draggableCardView: DraggableCardView = DraggableCardView(frame: CGRect(x: (self.view.frame.width - CARD_WIDTH) / 2, y: (self.view.frame.height - CARD_HEIGHT) / 2, width: CARD_WIDTH, height: CARD_HEIGHT))
        self.view.addSubview(draggableCardView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

