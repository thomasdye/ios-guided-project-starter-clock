//
//  ViewController.swift
//  Clock
//
//  Created by Ben Gohlke on 6/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit


class ClockViewController: UIViewController {
    
    @IBOutlet weak var clockView: ClockView!

    @IBOutlet weak var dayOfWeekLabel: UILabel!
    
    @IBOutlet weak var monthLabel: UILabel!
    
    @IBOutlet weak var dayLabel: UILabel!
    
    @IBOutlet weak var yearLabel: UILabel!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
                if let value = UserDefaults.standard.value(forKey: "selectedColorTheme"){
                    
            let selectedIndex = value as! Int
                    if selectedIndex == 0 {
                        selectedColorTheme = .red
                    } else if selectedIndex == 1 {
                        selectedColorTheme = .green
                    } else if selectedIndex == 2 {
                        selectedColorTheme = .blue
                    } else {
                        selectedColorTheme = .purple
                    }
        }
        
        
        
        clockView.timezone = TimeZone(abbreviation: "EST")
        
        let currentTime = Date()
        
        // Get calendar and set timezone
        let calendar = Calendar(identifier: .gregorian)
        
        // Extract hour, minute, second components from current time
        let timeComponents = calendar.dateComponents([.year, .month, .weekday, .day, .hour, .minute, .second], from: currentTime)
        
        var weekdayString: String = ""
        var monthString: String = ""
        var dayEndingString: String = ""
        
        if timeComponents.weekday == 1 {
            weekdayString = "Sunday"
        } else if timeComponents.weekday == 2 {
            weekdayString = "Monday"
        } else if timeComponents.weekday == 3 {
            weekdayString = "Tuesday"
        } else if timeComponents.weekday == 4 {
            weekdayString = "Wednesday"
        } else if timeComponents.weekday == 5 {
            weekdayString = "Thursday"
        } else if timeComponents.weekday == 6 {
            weekdayString = "Friday"
        } else {
            weekdayString = "Saturday"
        }
        
        if timeComponents.month == 1 {
            monthString = "January"
        } else if timeComponents.month == 2 {
            monthString = "February"
        } else if timeComponents.month == 3 {
            monthString = "March"
        } else if timeComponents.month == 4 {
            monthString = "April"
        } else if timeComponents.month == 5 {
            monthString = "May"
        } else if timeComponents.month == 6 {
            monthString = "June"
        } else if timeComponents.month == 7 {
            monthString = "July"
        } else if timeComponents.month == 8 {
            monthString = "August"
        } else if timeComponents.month == 9 {
            monthString = "September"
        } else if timeComponents.month == 10 {
            monthString = "October"
        } else if timeComponents.month == 11 {
            monthString = "November"
        } else {
            monthString = "December"
        }
        
        if timeComponents.day == 1 {
            dayEndingString = "st"
        } else if timeComponents.day == 2 {
            dayEndingString = "nd"
        } else if timeComponents.day == 3 {
            dayEndingString = "rd"
        } else if timeComponents.day == 4 {
            dayEndingString = "th"
        } else if timeComponents.day == 5 {
            dayEndingString = "th"
        } else if timeComponents.day == 6 {
            dayEndingString = "th"
        } else if timeComponents.day == 7 {
            dayEndingString = "th"
        } else if timeComponents.day == 8 {
            dayEndingString = "th"
        } else if timeComponents.day == 9 {
            dayEndingString = "th"
        } else if timeComponents.day == 10 {
            dayEndingString = "th"
        } else if timeComponents.day == 11 {
            dayEndingString = "th"
        } else if timeComponents.day == 12 {
            dayEndingString = "th"
        } else if timeComponents.day == 13 {
            dayEndingString = "th"
        } else if timeComponents.day == 14 {
            dayEndingString = "th"
        } else if timeComponents.day == 15 {
            dayEndingString = "th"
        } else if timeComponents.day == 16 {
            dayEndingString = "th"
        } else if timeComponents.day == 17 {
            dayEndingString = "th"
        } else if timeComponents.day == 18 {
            dayEndingString = "th"
        } else if timeComponents.day == 19 {
            dayEndingString = "th"
        } else if timeComponents.day == 20 {
            dayEndingString = "th"
        } else if timeComponents.day == 21 {
            dayEndingString = "st"
        } else if timeComponents.day == 22 {
            dayEndingString = "nd"
        } else if timeComponents.day == 23 {
            dayEndingString = "rd"
        } else if timeComponents.day == 24 {
            dayEndingString = "th"
        } else if timeComponents.day == 25 {
            dayEndingString = "th"
        } else if timeComponents.day == 26 {
            dayEndingString = "th"
        } else if timeComponents.day == 27 {
            dayEndingString = "th"
        } else if timeComponents.day == 28 {
            dayEndingString = "th"
        } else if timeComponents.day == 29 {
            dayEndingString = "th"
        } else if timeComponents.day == 30 {
            dayEndingString = "th"
        } else {
            dayEndingString = "st"
        }

        
        dayOfWeekLabel.text = weekdayString
        monthLabel.text = monthString
        dayLabel.text = "\(timeComponents.day ?? 0)\(dayEndingString)"
        yearLabel.text = String(timeComponents.year ?? 0)

    }
    
}
