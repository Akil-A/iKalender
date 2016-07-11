//
//  CourseStore.swift
//  iKalender
//
//  Created by Akil Asghar on 11.06.2016.
//  Copyright © 2016 Mantena AS. All rights reserved.
//

import Foundation
import Alamofire


class CourseStore {
    

    var allCourses = [Course]()
    
        
    func createCourse(afterCourseCreated: (Course) -> Void) {
        var id: Int = 9
        var main: String = ""
        var newCourse: Course?
        Alamofire.request(.GET, "http://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=7392ac5ae434e5076d587c7bdf88ef26")
            .responseJSON(completionHandler: { response in
                
                if let JSON = response.result.value {
                    // id = JSON["id"] as! Int
                    //main = JSON["main"] as! String
                    let dataArray: NSArray = JSON["weather"] as! NSArray
                    
                    for item in dataArray { // loop through data items
                        let obj = item as! NSDictionary
                        for (key, value) in obj {
                            if key.isEqual("id"){
                                id = value as! Int
                            }
                            if key.isEqual("main"){
                                main = value as! String
                            }
                        }
                    }
                    
                }

                newCourse = Course(id: id, main: main)
                afterCourseCreated(newCourse!)                

            })
    }
}

