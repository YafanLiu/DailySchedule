//
//  TermSelectionViewController.swift
//  DailySchedule
//
//  Created by lye on 15/9/28.
//  Copyright (c) 2015年 lye. All rights reserved.
//

import UIKit

class TermSelectionViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var firstView: UIView!
    
    @IBAction func changeTerm(sender: AnyObject) {
        switch segmentControl.selectedSegmentIndex
        {
        case 0:
            firstView.hidden = false
            //secondView.hidden = true
        case 1:
            firstView.hidden = true
            //secondView.hidden = false
        default:
            break;
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
