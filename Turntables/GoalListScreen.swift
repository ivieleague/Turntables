//
//  GoalListScreen.swift
//  Turntables
//
//  Created by Nikki Ivie on 10/26/18.
//  Copyright © 2018 Haptic Technologies, LLC. All rights reserved.
//

import UIKit

class GoalListScreen: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var goals: [Goal] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        goals = createArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createArray() -> [Goal] {
        
        var tempGoals: [Goal] = []
        
        let goal1 = Goal(goalTitle: "Eat Healthy", goalReminder: "Repeat every 2 hours", goalProgress: "50", goalColor: UIColor(red: 0.0, green: 0.004, blue: 0.502, alpha: 1.0))
        let goal2 = Goal(goalTitle: "Go to the Gym", goalReminder: "Daily - 5 AM", goalProgress: "100", goalColor: .green)
        let goal3 = Goal(goalTitle: "Pray", goalReminder: "Daily - 6 AM", goalProgress: "100", goalColor: .purple)
        let goal4 = Goal(goalTitle: "Finish Paper", goalReminder: "No Repeat - 7 PM", goalProgress: "25", goalColor: .blue)
        
        tempGoals.append(goal1)
        tempGoals.append(goal2)
        tempGoals.append(goal3)
        tempGoals.append(goal4)
        
        return tempGoals
    }

}

extension GoalListScreen: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let goal = goals[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "GoalCell") as! GoalCell
        
        cell.setGoal(goal: goal)
        
        return cell
    }
    
}
