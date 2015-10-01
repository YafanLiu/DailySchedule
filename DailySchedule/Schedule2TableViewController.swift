//
//  Schedule2TableViewController.swift
//  DailySchedule
//
//  Created by lye on 15/9/30.
//  Copyright (c) 2015年 lye. All rights reserved.
//

import UIKit

class Schedule2TableViewController: UITableViewController {
    
    var coursetitle = ["2DP4","3CL4","3PI4","3TR4","2B03"]
    var courseExplain = ["Microprocessors","Control Systems","Energy Conversion","Communication System","Engineer Economics"]
    var lectime = ["MoWeTh 13:30 - 14:20","MoWe 08:30 - 09:20; Fr 10:30 - 11:20","TuThFr 11:30 - 12:20","MoTh 12:30 - 13:20; Tu 13:30 - 14:20","MoWe 11:30 - 12:20; Fr 13:30 - 14:20"]
    var lecLoc = ["ITB AB102","JHE 264","TSH B128","HSC 1A6","CNH 104"]
    var tutime = ["Tu 10:30 - 11:20","Fr 08:30 - 09:20","We 10:30 - 11:20","Th 08:30 - 09:20","N/A"]
    var tuloc = ["ITB 137","JHE 376","MDCL 1110","ITB 137","N/A"]
    var labtime = ["Tu 14:30 - 17:20","Fr 14:30 - 17:20","We 14:30 - 17:20","Th 14:30 - 17:20","N/A"]
    var labloc = ["SEE CLASS NOTES","ITB 154","ITB AB110","SEE CLASS NOTES","N/A"]
    var name = ["Thomas Doyle","Timothy Davidson","Chih-hung Chen","James Park Reilly","Cameron Churchill"]
    var pic = ["Thomas Doyle","Timothy Davidson","Chih-hung Chen","James Park Reilly","Cameron Churchill"]
    var textpic = ["Not available","Not available","Not available","Not available","Not available"]
    var lab = ["N/A","N/A","N/A","N/A","N/A"]
    var mid = ["N/A","N/A","N/A","N/A","N/A"]
    var final = ["N/A","N/A","N/A","N/A","N/A"]

    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = 195

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 5
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! ScheduleTableViewCell
        
        let stringTitle = coursetitle[indexPath.row] as String
        let stringLab = lab[indexPath.row] as String
        let stringMid = mid[indexPath.row] as String
        let stringFinal = final[indexPath.row] as String
        let textbook = textpic[indexPath.row] as String
        cell.courseTitle.text = stringTitle
        cell.textBook.image = UIImage(named: textbook)
        cell.lab.text = stringLab
        cell.mid.text = stringMid
        cell.final.text = stringFinal

        // Configure the cell...

        return cell as ScheduleTableViewCell
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "WinterDetailSegue"{
            let detailViewController = segue.destinationViewController as! WinterViewController
            if let indexPath = tableView.indexPathForCell(sender as! UITableViewCell) {
                detailViewController.selectedTitle = coursetitle[indexPath.row]
                detailViewController.selectedExplain = courseExplain[indexPath.row]
                detailViewController.selectedName = name[indexPath.row]
                detailViewController.selectedlecTime = lectime[indexPath.row]
                detailViewController.selectedlecLoc = lecLoc[indexPath.row]
                detailViewController.selectedTuTime = tutime[indexPath.row]
                detailViewController.selectedTuLoc = tuloc[indexPath.row]
                detailViewController.selectedlabTime = labtime[indexPath.row]
                detailViewController.selectedlabLoc = labloc[indexPath.row]
                detailViewController.selectedpic = pic[indexPath.row]
            }
        }
        
    }

    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
