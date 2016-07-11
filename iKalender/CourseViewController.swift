//
//  ItemsViewController.swift
//  iKalender
//
//  Created by Akil Asghar on 11.06.2016.
//  Copyright © 2016 Mantena AS. All rights reserved.
//

import Foundation
import UIKit

class CourseViewController: UITableViewController{
    
    var courseStore: CourseStore!
    var course: Course!

    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(courseStore.allCourses.count)
        
        var returnValue = 0
        
        switch(mySegmentedControl.selectedSegmentIndex)
        {
            
        case 0:
            returnValue = courseStore.allCourses.count
            break
        case 1:
            break
            
        default:
            break
            
        }
        return returnValue
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("UITableViewCell", forIndexPath: indexPath)
        
        switch(mySegmentedControl.selectedSegmentIndex)
        {
            
        case 0:
            let course = courseStore.allCourses[indexPath.row]
            cell.textLabel?.text = String(course.id)
            cell.detailTextLabel?.text = course.main
            break
        case 1:
            break
            
        default:
            break
            
        }
        
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        courseStore.createCourse { (fetchedCourse: Course) in
            self.courseStore.allCourses.append(fetchedCourse)
            self.tableView.reloadData()
        }
        tableView.reloadData()
    }
    
    @IBAction func segmentedControlActionChanged(sender: AnyObject) {
        tableView.reloadData()
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowCourse" {
            if let row = tableView.indexPathForSelectedRow?.row {
                
                let course = courseStore.allCourses[row]
                let detailViewController = segue.destinationViewController as! DetailViewController
                detailViewController.course = course
            }
        }
    }
}