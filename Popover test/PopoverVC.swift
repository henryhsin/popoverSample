
//
//  PopoverVCViewController.swift
//  Popover test
//
//  Created by 辛忠翰 on 2016/9/26.
//  Copyright © 2016年 Keynote. All rights reserved.
//

import UIKit

class PopoverVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        self.showAnimate()
        // Do any additional setup after loading the view.
    }

    @IBAction fileprivate func close(_ sender: AnyObject) {
        self.removeAnimate()
    }

    
    fileprivate func showAnimate() {
        self.view.transform =  CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0
        UIView.animate(withDuration: 0.25) {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
    }
    
    fileprivate func removeAnimate() {
       
        UIView.animate(withDuration: 0.25, animations: { 
            self.view.transform =  CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0

        }) { (finished: Bool) in
            if finished{
                self.view.removeFromSuperview()
            }
        }
    }
    
    
    

    
}
