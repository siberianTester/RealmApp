//
//  Extension + UITableViewCell.swift
//  RealmApp
//
//  Created by Yaroslav Malygin on 16.01.2025.
//  Copyright © 2025 Alexey Efimov. All rights reserved.
//

import UIKit

extension UITableViewCell {
    func configure(with taskList: TaskList) {
        let currentTasks = taskList.tasks.filter("isComplete = false")
        var content = defaultContentConfiguration()
        
        content.text = taskList.title
        
        if taskList.tasks.isEmpty {
            content.secondaryText = "0"
            accessoryType = .none
        } else if currentTasks.isEmpty {
            content.secondaryText = nil
            accessoryType = .checkmark
        } else {
            content.secondaryText = currentTasks.count.formatted()
            accessoryType = .none
        }
        
        contentConfiguration = content
    }
}
