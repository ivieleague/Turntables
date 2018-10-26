//
//  GoalCell.swift
//  Turntables
//
//  Created by Nikki Ivie on 10/26/18.
//  Copyright © 2018 Haptic Technologies, LLC. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalTitle: UILabel!
    @IBOutlet weak var goalReminder: UILabel!
    @IBOutlet weak var goalProgressLabel: UILabel!
    @IBOutlet weak var goalProgressBar: UIProgressView!
    
    
    func setGoal(goal: Goal) {
        
        goalTitle.text = goal.goalTitle
        goalTitle.textColor = goal.goalColor
        
        goalReminder.text = goal.goalReminder
        goalProgressLabel.text = goal.goalProgress + "%"
    }
    
}
