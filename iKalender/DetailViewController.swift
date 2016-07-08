//
//  DetailViewController.swift
//  iKalender
//
//  Created by Akil Asghar on 08.07.2016.
//  Copyright © 2016 Mantena AS. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController : UIViewController {

    @IBOutlet var instructorField: UITextField!
    @IBOutlet var placeField: UITextView!
    @IBOutlet var address: UITextView!
    @IBOutlet var timeField: UITextField!
    @IBOutlet var dateField: UITextView!
    @IBOutlet var avaiblePlace: UITextField!
    
    var course: Course!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        instructorField.text = course.main
        placeField.text = String(course.id)
    }
}
