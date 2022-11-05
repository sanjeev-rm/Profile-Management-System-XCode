//
//  StudentValidator.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 05/11/22.
//

import Foundation

/// Class to validate Student.
class StudentValidator
{
    /// Function to validate Registration number.
    /// - throws: RegistrationNumberError.invalidRegistrationNumber
    /// - parameter RegNo: The registration number as String.
    static func validateRegistrationNumber(RegNo registrationNumber : String) throws
    {
        let range = NSRange(location: 0, length: registrationNumber.utf16.count)
        
        let regex = try! NSRegularExpression(pattern: "[0-9]{2}[a-z A-Z]{3}[0-9]{4}")
        
        // This .firstMatch function returns the value itself if the string is in the regular expression form else returns nil.
        if(regex.firstMatch(in: registrationNumber, options: [], range: range) == nil)
        {
            throw StudentRegistrationNumberError.invalidRegistrationNumber
        }
    }
    
    /// Function to validate progam of a student.
    /// - throws: StudentProgramError.invalidProgramError
    /// - parameter program: The program as String
    static func validateProgram(Program program : String) throws
    {
        do
        {
            try Validators.validateString(string: program)
        }
        catch Errors.typeMismatchError
        {
            throw StudentProgramError.invalidProgramError
        }
    }
    
    /// Function to validate branch of a student.
    /// - throws: StudentBranchError.invalidBranchError
    /// - parameter Branch: The branch as String
    static func validateBranch(Branch branch : String) throws
    {
        do
        {
            try Validators.validateString(string: branch)
        }
        catch Errors.typeMismatchError
        {
            throw StudentBranchError.invalidBranchError
        }
    }
    
    /// Function to validate school of a student.
    /// - throws: StudentSchoolError.invalidSchoolError
    /// - parameter School: The school as String
    static func validateSchool(School school : String) throws
    {
        do
        {
            try Validators.validateString(string: school)
        }
        catch Errors.typeMismatchError
        {
            throw StudentSchoolError.invalidSchoolError
        }
    }
    
    /// Function to validate graduating year.
    /// - throws: GraduatingYearError.invalidYearError
    /// - parameter graduatingYear: The graduating year as Int.
    static func validateGraduatingYear(GraduatingYear graduatingYear : Int) throws
    {
        do
        {
            try DateValidator.validateYear(year: graduatingYear)
            
            // Graduating year can't be in the past.
            let currentYear : Int = Calendar.current.component(.year, from: .now)
            if(graduatingYear < currentYear)
            {
                throw StudentGraduatingYearError.invalidYearError
            }
        }
        catch DateError.invalidYearError
        {
            // Catches DateError and throws GraduatingYearError. Which is specially for graduating year.
            throw StudentGraduatingYearError.invalidYearError
        }
    }
}
