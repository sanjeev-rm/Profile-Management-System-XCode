//
//  AddressValidator.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 05/11/22.
//

import Foundation

/// Class that contains functions to validate an address.
class AddressValidator
{
    /// Functoin to validate an pincode of an address.
    static func validatePincode(Pincode pincode : String) throws
    {
        // Pincode has exactly 6 digits in INDIA and consists of only digits.
        if(pincode.count != 6)
        {
            throw AddressError.invalidPincodeError
        }
    }
}
