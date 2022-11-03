//
//  YearValidator.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 03/11/22.
//

import Foundation

class YearValidator
{
    /// Function to validate and year.
    /// - throws: YearError.invalidLengthError
    /// - parameter year: Int year value to validate.
    static func validateYear(Year year : Int) throws
    {
        let noOfDigits : Int = String.init(year).count
        if(noOfDigits < 4 || noOfDigits > 4)
        {
            throw CommonError.invalidLengthError
        }
    }
}
