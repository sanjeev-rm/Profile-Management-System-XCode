//
//  PersonErrors.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 31/10/22.
//

import Foundation

/// Contains errors of a Date.
enum DateError : Error
{
    /// Error for when the year is invalid.
    case invalidYearError
    /// Error for when the Month is invalid.
    case invalidMonthError
    /// Error for when the Day is invalid.
    case invalidDayError
    /// Error for when an String that's entered can't be converted to an Int value.
    case typeMismatchError
}

/// Contains erros of a Email.
enum EmailError : Error
{
    /// Error for when the email is invalid.
    case invalidEmailError
    /// Error for when the recipient name of the email is invalid.
    case invalidRecipientNameError
    /// Error for when the domain name of the email is inavlid.
    case invalidDomainNameError
}

/// Contains errors of a mobile number.
enum MobileError : Error
{
    /// Error for when the length of the mobile number is invalid.
    case lengthInvalidError
    /// Error for when an String that's entered can't be converted to an Int value.
    case typeMismatchError
}

/// Contains errors of an address.
enum AddressError : Error
{
    /// Error for when the pincode of the address is invalid.
    case invalidPincodeError
}
