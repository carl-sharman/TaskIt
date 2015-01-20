//
//  Date.swift
//  TaskIt
//
//  Created by Carl Sharman on 19/01/2015.
//  Copyright (c) 2015 United Learning. All rights reserved.
//

import Foundation

class Date {
    
    // # means the first parameter must be named
    class func from (#year: Int, month: Int, day: Int) -> NSDate {
        
        var components = NSDateComponents()
        components.year = year
        components.month = month
        components.day = day
        
        var gregorianCalendar = NSCalendar(identifier: NSGregorianCalendar)
        var date = gregorianCalendar?.dateFromComponents(components)
        
        return date!
    }
    
    class func toString(#date: NSDate) -> String {
        
        let dateStringFormatter = NSDateFormatter()
        //dateStringFormatter.dateFormat = "yyyy-MM-dd"
        //let dateString = dateStringFormatter.stringFromDate(date)
        //return dateString
        
        return NSDateFormatter.localizedStringFromDate(date, dateStyle: NSDateFormatterStyle.ShortStyle, timeStyle: NSDateFormatterStyle.NoStyle)
    }
    
    func toString(date: NSDate) -> String {
        
        let dateStringFormatter = NSDateFormatter()
        
        return NSDateFormatter.localizedStringFromDate(date, dateStyle: NSDateFormatterStyle.ShortStyle, timeStyle: NSDateFormatterStyle.NoStyle)
    }
    
}