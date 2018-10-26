//
//  GoalClass.swift
//  Turntables
//
//  Created by Nikki Ivie on 10/26/18.
//  Copyright © 2018 Haptic Technologies, LLC. All rights reserved.
//

import Foundation
import UIKit

class Goal {
    
    var goalTitle : String
    var goalReminder : String
    var goalProgress: String
    var goalColor : UIColor
    
    init(goalTitle: String, goalReminder: String, goalProgress: String, goalColor: UIColor) {
        self.goalTitle = goalTitle
        self.goalReminder = goalReminder
        self.goalProgress = goalProgress
        self.goalColor = goalColor
    }
    
}
