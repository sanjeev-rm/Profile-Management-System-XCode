//
//  DateValidator.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 01/11/22.
//

import Foundation

class DateValidator
{
    /// This function throws error if the string argument received can not be converted to an integer.
    /// Like if it consists of any character other than digits.
    /// THROWS --> DateError.typeMismatchError
    static func validateType(yearString year : String, monthString month : String, dayString day : String) throws
    {
        if(Int(year) == nil || Int(month) == nil || Int(day) == nil)
        {
            throw DateError.typeMismatchError
        }
    }
    
    /// This function validates year in a date.
    /// Throws error if the year entered is lesser than 100.
    /// THROWS --> DateError.invalidYearError
    static func validateYear(year : Int) throws
    {
        if(year < 100)
        {
            throw DateError.invalidYearError
        }
    }
    
    /// This function validates month in a date.
    /// Throws error if the month entered is less than 1 or greater than 12..
    /// THROWS --> DateError.invalidMonthError
    static func validateMonth(month : Int) throws
    {
        if(month < 1 || month > 12)
        {
            throw DateError.invalidMonthError
        }
    }
    
    /// This function validates day in a date.
    /// Throws error if the year entered is less than 1 or greater than 31..
    /// THROWS --> DateError.invalidDayError
    static func validateDay(day : Int) throws
    {
        if(day < 1 || day > 31)
        {
            throw DateError.invalidDayError
        }
    }
}
