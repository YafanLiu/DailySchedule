//
//  FallDetailViewController.swift
//  DailySchedule
//
//  Created by lye on 15/9/28.
//  Copyright (c) 2015年 lye. All rights reserved.
//

import UIKit

class FallDetailViewController: UIViewController {

    @IBOutlet weak var detailCourseTitle: UILabel!
    @IBOutlet weak var courseExplaination: UILabel!
    var selectedTitle:String?
    var selectedExplain:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        detailCourseTitle.text = selectedTitle
        courseExplaination.text = selectedExplain

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("Row \(indexPath.row)selected")
        selectedTitle = self.tableData[indexPath.row]
        
        performSegueWithIdentifier("FallDetailView", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        if(segue.identifier == "FallDetailView") {
            var vc = segue.destinationViewController as! FallDetailViewController
            vc.detailCourseTitle.text = selectedTitle
        }      
    }*/
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
