//
//  MobileValidator.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 02/11/22.
//

import Foundation

/// This class consists of methods to validate a mobile numer.
class MobileValidator
{
    /// Function to validate Mobile number.
    /// - parameter mobile: the mobile number to validate.
    /// - throws: MobileError.lengthInvalidError, MobileError.typeMismatchError
    static func validateMobile(Mobile mobile : String) throws
    {
        // Minimum length of mobile number is 7 and maximum is 15.
        if(mobile.count < 7 || mobile.count > 15)
        {
            throw MobileError.lengthInvalidError
        }
        
        // Checks if the string even contains a digit.
        if(!isNumPresent(string: mobile))
        {
            throw MobileError.typeMismatchError
        }
    }
    
    /// Function that checks if number is present in a string.
    /// - parameter string: string to check if a number is present or not.
    /// - returns: true if num is present, false if not.
    private static func isNumPresent(string : String) -> Bool
    {
        for char in string
        {
            if(char.isNumber)
            {
                return true
            }
        }
        return false
    }
}
