//
//  ItemsViewController.swift
//  iKalender
//
//  Created by Akil Asghar on 11.06.2016.
//  Copyright © 2016 Mantena AS. All rights reserved.
//

import Foundation
import UIKit

class CourseViewController: UITableViewController {
    
    var courseStore: CourseStore!
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courseStore.allCourses.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("UITableViewCell", forIndexPath: indexPath)
        let course = courseStore.allCourses[indexPath.row]
        
        cell.textLabel?.text = course.instructor
        cell.detailTextLabel?.text = course.date
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let statusNarHeight = UIApplication.sharedApplication().statusBarFrame.height
        
        let insets = UIEdgeInsets(top: statusNarHeight, left: 0, bottom: 0, right: 0)
        
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
    }
}