//
//  FacultyValidator.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 12/11/22.
//

import Foundation

class FacultyValidator
{
    /// This function is used to validate school of the faculty.
    /// - throws: FacultyError.invalidSchoolError
    /// - parameter School: The school the faculty is of in type String
    static func validateSchool(School school : String) throws
    {
        do
        {
            try Validators.validateString(string: school)
        }
        catch Errors.typeMismatchError
        {
            throw FacultyError.invalidSchoolError
        }
    }
    
    /// This function validates department of the faculty.
    /// - throws: FacultyError.invalidDepartmentError
    /// - parameter Department: The department the faculty is a part of in type String
    static func validateDepartment(Department department : String) throws
    {
        do
        {
            try Validators.validateString(string: department)
        }
        catch Errors.typeMismatchError
        {
            throw FacultyError.invalidDepartmentError
        }
    }
    
    /// This function validates date of joining of the faculty.
    /// - throws: FacultyError.invalidDateOfJoiningError
    /// - parameter DateofJoining: The date of joining of the faculty in type Date
    static func validateDateOfJoining(DateOfJoining dateOfJoining : Date) throws
    {
        let currentYear : Int = Calendar.current.component(.year, from: .now)
        if(currentYear > dateOfJoining.getYear())
        {
            throw FacultyError.invalidDateOfJoiningError
        }
    }
    
    /// This function validates years of experience of the faculty.
    /// - throws: FacultyError.invalidYearsOfExperienceError
    static func validateYearsOfExperience(YearsOfExperience years : Int) throws
    {
        // Throws error when the years of experience enetered is -ve or greater than 100.
        // I mean an experience of greater than 100??? come on!?
        if(years < 0 || years > 100)
        {
            throw FacultyError.invalidYearsOfExperienceError
        }
    }
}
