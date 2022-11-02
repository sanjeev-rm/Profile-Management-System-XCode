//
//  PersonErrors.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 31/10/22.
//

import Foundation

enum DateError : Error
{
    case invalidYearError
    case invalidMonthError
    case invalidDayError
    case typeMismatchError
}

enum EmailError : Error
{
    case invalidEmailError
    case invalidRecipientNameError
    case invalidDomainNameError
}

enum MobileError : Error
{
    case lengthInvalidError
    case typeMismatchError
}
