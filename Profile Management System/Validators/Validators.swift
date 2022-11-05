//
//  Validators.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 05/11/22.
//

import Foundation

/// This class contains validating functions that are common or be used by all the classes in the Validators group.
class Validators
{
    /// Function that validates that the string entered doesn't contain any digits in them.
    /// - throws: Errors.typeMismatchError
    /// - parameter string: the string to validate.
    static func validateString(string : String) throws
    {
        for num in 0...9
        {
            if(string.contains(String.init(num)))
            {
                throw Errors.typeMismatchError
            }
        }
    }
}
