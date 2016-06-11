//
//  Course.swift
//  iKalender
//
//  Created by Akil Asghar on 11.06.2016.
//  Copyright © 2016 Mantena AS. All rights reserved.
//

import Foundation
import UIKit

class Course: NSObject {
    var instructor: String
    let date: String
    
    init(instructor: String, date: String) {
        self.instructor = instructor
        self.date = date
        
        super.init()
    }
    
    convenience override init() {
        let instructor: String = "Test"
        let date: String = "12.01.2003"
        self.init(instructor: instructor, date: date)
    }
}