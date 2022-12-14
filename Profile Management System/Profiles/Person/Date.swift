//
//  Date.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 31/10/22.
//

import Foundation

/// This class represents an Date.
/// With properties such as year, month, and day.
class Date : CustomStringConvertible
{
    private var year : Int
    private var month : Int
    private var day : Int
    
    // This property description was implemented from protocol CustomStringConvertible.
    // This is like toString() in Java.
    /// Returns the instance of class in String format.
    var description: String
    {
        return "\(self.day)/\(self.month)/\(self.year)"
    }
    
    /// This initializer takes in Int values as arguments for year, month and day.
    init(year : Int, month : Int, day : Int) throws
    {
        self.year = year
        self.month = month
        self.day = day
        
        // These throw technical errors like if month is > 12, etc.
        // We are doing this inside constructor itself because we want to throw error while creating Date instance itself.
        try DateValidator.validateYear(year: year)
        try DateValidator.validateMonth(month: month)
        try DateValidator.validateDay(day: day)
    }
    
    // Convenience initializers are secondary, supporting initializers for a class. You can define a convenience initializer to call a designated initializer from the same class.
    // This is like constructor chaining in Java. Just use the keyword convenience in the header of the initializer.
    /// This is an another initializer that takes in String arguments and initilizes Int values to the properties of Date.
    /// Default value is 0.
    convenience init(YearString year : String, MonthString month : String, DayString day : String) throws
    {
        // These throws error if the string argument received can not be converted to an integer.
        // Like if it consists of any character other than digits.
        try DateValidator.validateType(yearString: year, monthString: month, dayString: day)
        
        // If the String entered can't be converted to an Int then it returns nil. So we have to give an default value. Here it's 0.
        try self.init(year: Int(year)!, month: Int(month)!, day: Int(day)!)
    }
    
    func setYear(year : Int) throws
    {
        try DateValidator.validateYear(year: year)
        self.year = year
    }
    
    func getYear() -> Int
    {
        return self.year
    }
    
    func setMonth(month : Int) throws
    {
        try DateValidator.validateMonth(month: month)
        self.month = month
    }
    
    func getMonth() -> Int
    {
        return self.month
    }
    
    func setDay(day : Int) throws
    {
        try DateValidator.validateDay(day: day)
        self.day = day
    }
    
    func getDay() -> Int
    {
        return self.day
    }
}
