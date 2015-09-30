//
//  ScheduleTableViewController.swift
//  DailySchedule
//
//  Created by lye on 15/9/28.
//  Copyright (c) 2015年 lye. All rights reserved.
//

import UIKit

class ScheduleTableViewController: UITableViewController {
    
    var temp = String()
    var coursetitle = ["3TP4","3TQ4","3EJ4","3FK4"]
    var courseExplain = ["Signals and Systems","Prob, Random Prog & Stats","Elec.Devic&Circ.II","Adv. Electromagnetics II"]
    var lectime = ["MoTh 09:30 - 10:20; Tu 10:30 - 11:20","MoWeTh 10:30 - 11:20","TuThFr 11:30 - 12:20","TuWeFr 09:30 - 10:20"]
    var lecLoc = ["ITB AB102","JHE 264","TSH B128","HSC 1A6"]
    var tutime = ["We 17:30 - 18:20","Tu 13:30 - 14:20","Mo 11:30 - 12:20","Tu 08:30 - 09:20"]
    var tuloc = ["JHE 264","MDCL 1102","ITB 137","HSC 1A6"]
    var labtime = ["Mo 17:30 - 20:30","We 14:30 - 17:20","Tu 14:30 - 17:20","Th 14:30 - 17:20"]
    var labloc = ["At home","BSB 241","ITB AB106","ITB 154"]
    var name = ["Terry Douglas Todd","Timothy Field","Jamal Deen","Shiva Kumar"]
    var pic = ["Terry Douglas Todd","Timothy Field","Jamal Deen","Shiva Kumar"]
    var textpic = ["TP","TQ","EJ","FK"]
    var lab = ["30%","20%","30%","30%"]
    var mid = ["30%","25%","20%","30%"]
    var final = ["40%","55%","50%","40%"]

    override func viewDidLoad() {
        super.viewDidLoad()

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
        return 4
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
        if segue.identifier == "FallDetailSegue"{
            let detailViewController = segue.destinationViewController as! FallDetailViewController
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
