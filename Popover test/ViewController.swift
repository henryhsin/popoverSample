//
//  ViewController.swift
//  Popover test
//
//  Created by 辛忠翰 on 2016/9/26.
//  Copyright © 2016年 Keynote. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func tapToPop(_ sender: UIButton) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "pop") as? PopoverVC
        self.addChildViewController(popOverVC!)
        popOverVC?.view.frame = self.view.frame
        self.view.addSubview((popOverVC?.view)!)
        popOverVC?.didMove(toParentViewController: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

