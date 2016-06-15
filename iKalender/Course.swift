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
    var id: Int
    let main: String
    
    init(id: Int, main: String) {
        self.id = id
        self.main = main
        
        super.init()
    }
}