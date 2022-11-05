//
//  StudentErrors.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 03/11/22.
//

import Foundation

/// Contains errors of Registration number.
enum StudentRegistrationNumberError : Error
{
    /// Error for when the registration number is invalid.
    case invalidRegistrationNumber
}

/// Contains erros of Program.
enum StudentProgramError : Error
{
    case invalidProgramError
}

/// Contains errors of Branch.
enum StudentBranchError : Error
{
    case invalidBranchError
}

/// Contains errors of School.
enum StudentSchoolError : Error
{
    case invalidSchoolError
}

/// Contains errors of Graduating Year.
enum StudentGraduatingYearError : Error
{
    /// Error for when year is invalid.
    case invalidYearError
    /// Error for when an String that's entered can't be converted to an Int value.
    case typeMismatchError
}
