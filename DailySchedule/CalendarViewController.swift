//
//  CalendarViewController.swift
//  DailySchedule
//
//  Created by lye on 15/9/30.
//  Copyright (c) 2015年 lye. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController,CalendarViewDelegate{

    @IBOutlet weak var placeholder: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let date = NSDate()
        let calendarView = CalendarView.instance(date, selectedDate: date)
        calendarView.delegate = self
        calendarView.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        placeholder.addSubview(calendarView)
        placeholder.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[calendarView]|", options: NSLayoutFormatOptions(0), metrics: nil, views: ["calendarView": calendarView]))
        placeholder.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[calendarView]|", options: NSLayoutFormatOptions(0), metrics: nil, views: ["calendarView": calendarView]))
    }
    
    func didSelectDate(date: NSDate){
        println("\(date.year)-\(date.month)-\(date.day)")
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
