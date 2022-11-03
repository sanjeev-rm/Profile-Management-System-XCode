//
//  RegistrationNumberValidator.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 03/11/22.
//

import Foundation

class RegistrationNumberValidator
{
    static func validateRegistrationNumber(RegNo registrationNumber : Int)
    {
        var noOfDigits : Int = String.init(registrationNumber).count
        if(noOfDigits < 4 || noOfDigits > 4)
        {
            throw RegistrationNumberError.invalidLengthError
        }
    }
}
