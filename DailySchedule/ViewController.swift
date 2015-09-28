//
//  ViewController.swift
//  DailySchedule
//
//  Created by lye on 15/9/27.
//  Copyright (c) 2015年 lye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var time: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let timestamp = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: .MediumStyle, timeStyle: .ShortStyle)
        println(timestamp)
        time.text = timestamp
        timecheckings()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func timecheckings(){
        let timestamp = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: .MediumStyle, timeStyle: .ShortStyle)
        let event2 = "Sep 27, 2015, 12:47 AM"
        let event3 = "Sep 27, 2015, 13:00 AM"
        if timestamp > event2  && timestamp < event3{
            println("haha")
        }
        else{
            println("NONONO")
        }
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(.CalendarUnitHour | .CalendarUnitMinute | .CalendarUnitMonth | .CalendarUnitYear | .CalendarUnitDay, fromDate: date)
        let hour = components.hour
        let minutes = components.minute
        let month = components.month
        let year = components.year
        let day = components.day
        println(minutes)
        println(hour)
    }



}

