//
//  DateValidator.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 01/11/22.
//

import Foundation

/// This class consists of methods to validate a date.
class DateValidator
{
    /// This function throws error if the string argument received can not be converted to an integer.
    /// - throws: DateError.typeMismatchError
    /// - parameter yearString: year as String
    /// - parameter monthString: month of year as String
    /// - parameter dayString: day of month as String
    static func validateType(yearString year : String, monthString month : String, dayString day : String) throws
    {
        // Condition to check if any of the string input cannot be converted to Int type. That means they are not numbers.
        if(Int(year) == nil || Int(month) == nil || Int(day) == nil)
        {
            throw DateError.typeMismatchError
        }
    }
    
    /// This function validates year in a date.
    /// - throws: DateError.invalidYearError
    /// - parameter year: year as Int
    static func validateYear(year : Int) throws
    {
        // Throws error if the year entered has no.of digits lesser than 4 or greater than 4.
        let noOfDigits : Int = String.init(year).count
        if(noOfDigits < 4 || noOfDigits > 4)
        {
            throw DateError.invalidYearError
        }
    }
    
    /// This function validates month in a date.
    /// - throws: DateError.invalidMonthError
    /// - parameter month: month of year as Int
    static func validateMonth(month : Int) throws
    {
        // Condition to check if the month entered is less than 1 or greater than 12.
        if(month < 1 || month > 12)
        {
            throw DateError.invalidMonthError
        }
    }
    
    /// This function validates day in a date.
    /// - throws: DateError.invalidDayError
    /// - parameter day: day of month as Int
    static func validateDay(day : Int) throws
    {
        // Condition to check if the day enetered is less than 1 or greater than 31.
        if(day < 1 || day > 31)
        {
            throw DateError.invalidDayError
        }
    }
}
