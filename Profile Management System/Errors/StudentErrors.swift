//
//  StudentErrors.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 03/11/22.
//

import Foundation

/// Contains errors of Graduating Year.
enum GraduatingYearError : Error
{
    /// Error for when year is invalid.
    case invalidYearError
    /// Error for when an String that's entered can't be converted to an Int value.
    case typeMismatchError
}
