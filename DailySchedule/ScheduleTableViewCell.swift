//
//  ScheduleTableViewCell.swift
//  DailySchedule
//
//  Created by lye on 15/9/28.
//  Copyright (c) 2015年 lye. All rights reserved.
//

import UIKit

class ScheduleTableViewCell: UITableViewCell {

    @IBOutlet weak var courseTitle: UILabel!
    @IBOutlet weak var textBook: UIImageView!
    @IBOutlet weak var lab: UILabel!
    @IBOutlet weak var mid: UILabel!
    @IBOutlet weak var final: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
