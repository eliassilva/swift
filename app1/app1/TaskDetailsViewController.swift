//
//  TaskDetailsViewController.swift
//  app1
//
//  Created by Elias Silva on 22/04/23.
//

import Cocoa

class TaskDetailsViewController: NSViewController {

    @IBOutlet weak var startDatePicker: NSDatePicker!
    @IBOutlet weak var endDatePicker: NSDatePicker!
    @IBOutlet weak var totalTimeLabel: NSTextField!
    
    lazy var dateComponentsFomatter: DateComponentsFormatter = {
        let dateComponentsFomatter = DateComponentsFormatter()
        
        dateComponentsFomatter.allowedUnits = .day
        dateComponentsFomatter.unitsStyle = .full
        
        return dateComponentsFomatter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.startDatePicker.dateValue = Date()
        self.endDatePicker.dateValue = Date()
        
        dateChanged(self.startDatePicker)
    }
    
    @IBAction func dateChanged(_ sender: NSDatePicker) {
        let cal = Calendar(identifier: .gregorian)
        let midnightStartDate = cal.startOfDay(for: self.startDatePicker.dateValue)
        
        // to make even days, we go thru midnight of the next day
        let midnightEndDate = cal.startOfDay(for: self.endDatePicker.dateValue).addingTimeInterval(60 * 60 * 24)
        
        let tripTime = midnightEndDate.timeIntervalSince(midnightStartDate)
        
        self.totalTimeLabel.stringValue = self.dateComponentsFomatter.string(from: tripTime)!
    }
}
