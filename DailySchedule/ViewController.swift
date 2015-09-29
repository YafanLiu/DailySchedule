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
    @IBOutlet weak var reminder: UILabel!
    
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
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(.CalendarUnitHour | .CalendarUnitMinute | .CalendarUnitMonth | .CalendarUnitYear | .CalendarUnitDay, fromDate: date)
        let hour = components.hour
        let minutes = components.minute
        let month = components.month
        let year = components.year
        let day = components.day
        let t1 = 0
        let t2 = 7
        let t3 = 8
        let t4 = 9
        let t5 = 12
        let t6 = 13
        let t7 = 17
        let t8 = 20
        let t9 = 23
        if hour > t1 && hour < t2{
            reminder.text = "Go To Bed! Have a good Dream!"
        }
        else if hour > t2 && hour < t3{
            reminder.text = "Morning is coming! It's a new day!"
        }
        else if hour > t3 && hour < t4{
            reminder.text = "Wake Up! You are getting late!"
        }
        else if (hour > t4 && hour < t5){
            reminder.text = "Go To School! Pay attention in the class!"
        }
        else if hour > t5 && hour < t6{
            reminder.text = "Have a short break! Eat Lunch!"
        }
        else if hour > t6 && hour < t7{
            reminder.text = "Afternoon! Be energetic on your coursework!"
        }
        else if (hour > t7 && hour < t8){
            reminder.text = "Call the day! Have a break and have a good dinner!"
        }
        else if (hour > t8 && hour < t9){
            reminder.text = "Keep going on! Reviews and preparations!"
        }
        else if (hour == t9){
            reminder.text = "Getting tired? Finish up everyting and take a shower."
        }
        
    }



}

