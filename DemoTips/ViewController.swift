//
//  ViewController.swift
//  DemoTips
//
//  Created by Tharindu Gamlath on 7/12/16.
//  Copyright © 2016 Tharindu Gamlath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnToolTip: UIButton!
    var popTip: AMPopTip?
    var stepNumber = 1;
    
    @IBOutlet weak var lblStep1: UILabel!
    @IBOutlet weak var lblStep2: UILabel!
    @IBOutlet weak var lblStep3: UILabel!
    @IBOutlet weak var lblStep4: UILabel!
    
    @IBAction func btnShowTip(sender: AnyObject) {
        
//        self.popTip?.showText("This is a sample tool tip!", direction: AMPopTipDirection.Down, maxWidth: 200, inView: self.view, fromFrame: self.btnToolTip.frame);
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.popTip = AMPopTip();
        self.popTip?.shouldDismissOnTap = true;
        self.popTip?.edgeMargin = 5;
        self.popTip?.offset = 2;
        self.popTip?.edgeInsets = UIEdgeInsets(top: 0,left: 20,bottom: 0,right: 20);
        self.popTip?.popoverColor = UIColor.blueColor();
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
//        self.popTip?.showText("This is a sample tool tip!", direction: AMPopTipDirection.Down, maxWidth: 200, inView: self.view, fromFrame: self.btnToolTip.frame);
        showTips();
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        showTips();
    }

    func showTips(){
        if stepNumber == 1 {
            self.popTip?.showText("This is a step 1", direction: AMPopTipDirection.Down, maxWidth: 200, inView: self.view, fromFrame: self.lblStep1.frame);
            stepNumber += 1;
        }else if (stepNumber == 2){
            self.popTip?.showText("This is a step 2", direction: AMPopTipDirection.Down, maxWidth: 200, inView: self.view, fromFrame: self.lblStep2.frame);
            stepNumber += 1;
        }else if (stepNumber == 3){
            self.popTip?.showText("This is a step 3", direction: AMPopTipDirection.Down, maxWidth: 200, inView: self.view, fromFrame: self.lblStep3.frame);
            stepNumber += 1;
        }else if (stepNumber == 4){
            self.popTip?.showText("This is a step 4", direction: AMPopTipDirection.Down, maxWidth: 200, inView: self.view, fromFrame: self.lblStep4.frame);
            self.popTip?.hide();
        }
        
    }

}

