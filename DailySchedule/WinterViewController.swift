//
//  WinterViewController.swift
//  DailySchedule
//
//  Created by lye on 15/10/1.
//  Copyright (c) 2015年 lye. All rights reserved.
//

import UIKit

class WinterViewController: UIViewController {
    
    @IBOutlet weak var detailCourseTitle: UILabel!
    @IBOutlet weak var courseExplaination: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var lecTIME: UILabel!
    @IBOutlet weak var lecLoc: UILabel!
    @IBOutlet weak var tuTime: UILabel!
    @IBOutlet weak var tuLoc: UILabel!
    @IBOutlet weak var labTime: UILabel!
    @IBOutlet weak var labLoc: UILabel!
    @IBOutlet weak var proPic: UIImageView!
    
    var selectedTitle:String?
    var selectedExplain:String?
    var selectedName:String?
    var selectedlecTime:String?
    var selectedlecLoc:String?
    var selectedTuTime:String?
    var selectedTuLoc:String?
    var selectedlabTime:String?
    var selectedlabLoc:String?
    var selectedpic:String?
    


    override func viewDidLoad() {
        super.viewDidLoad()
        detailCourseTitle.text = selectedTitle
        courseExplaination.text = selectedExplain
        name.text = selectedName
        lecTIME.text = selectedlecTime
        lecLoc.text = selectedlecLoc
        tuTime.text = selectedTuTime
        tuLoc.text = selectedTuLoc
        labTime.text = selectedlabTime
        labLoc.text = selectedlabLoc
        proPic.image = UIImage(named: selectedpic!)


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
