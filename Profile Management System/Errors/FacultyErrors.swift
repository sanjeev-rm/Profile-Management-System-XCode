//
//  FacultyErrors.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 12/11/22.
//

import Foundation

/// Contains errors of properties of a Faculty.
enum FacultyError : Error
{
    /// Error for when the school of faculty is invalid.
    case invalidSchoolError
    /// Error for when the department of faculty is invalid.
    case invalidDepartmentError
    /// Error for when the date of joingin of faculty is invalid.
    case invalidDateOfJoiningError
    /// Error for when the years of experience of faculty is invalid.
    case invalidYearsOfExperienceError
}
