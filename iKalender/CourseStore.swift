//
//  CourseStore.swift
//  iKalender
//
//  Created by Akil Asghar on 11.06.2016.
//  Copyright © 2016 Mantena AS. All rights reserved.
//

import Foundation

class CourseStore {
    
    var allCourses = [Course]()
    
    func createCourse() -> Course {
        let newCourse = Course();
        
        allCourses.append(newCourse)
        
        return newCourse;
    }
    
    init() {
        for _ in 0..<5 {
            createCourse()
        }
    }
}