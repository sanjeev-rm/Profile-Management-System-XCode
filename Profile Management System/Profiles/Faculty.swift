//
//  Faculty.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 30/10/22.
//

import Foundation

class Faculty : Person
{
    private var facultyId : String
    private var Designation : String
    private var school : String
    private var department : String
    private var dateOfJoining : Date
    private var yearsOfExperience : Int
    
    /// This is the initializer of Faculty.
    /// - throws: FacultyError.invalidSchoolError, FacultyError.invalidDepartmentError, FacultyError.invalidDateOfJoiningError, FacultyError.invalidYearsOfExperienceError
    init(Name name: Name, Gender gender: String, DateOfBirth dob: Date, Email email: String, MobileNumber mobile: String, Address address: Address, FacultyID facultyId: String, Responsibility responsibility: String, School school: String, DateOfJoining dateOfJoining: Date, Department department: String, YearsOfExperience yearsOfExperience: String) throws
    {
        // This validates the info entered. and throws errors if not valid.
        try FacultyValidator.validateSchool(School: school)
        try FacultyValidator.validateDepartment(Department: department)
        try FacultyValidator.validateDateOfJoining(DateOfJoining: dateOfJoining)
        
        // This checks if the input that is string can be converted to an Int. If not it means it contains characters other than numbers.
        if(Int(yearsOfExperience) == nil)
        {
            throw FacultyError.invalidYearsOfExperienceError
        }
        // This is to validate if the Years Of Experience after making sure it's an Int, if it's valid to be an year.
        try FacultyValidator.validateYearsOfExperience(YearsOfExperience: Int(yearsOfExperience)!)
        
        self.facultyId = facultyId
        self.Designation = responsibility
        self.school = school
        self.department = department
        self.dateOfJoining = dateOfJoining
        self.yearsOfExperience = Int(yearsOfExperience)!
        try super.init(Name: name, Gender: gender, DateOfBirth: dob, Email: email, MobileNumber: mobile, Address: address)
    }
    
    func setFacultyid(facultyId : String)
    {
        self.facultyId = facultyId
    }
    
    func getFacultyId() -> String
    {
        return self.facultyId
    }
    
    func setResponsibility(responsibility : String)
    {
        self.Designation = responsibility
    }
    
    func getResponsibility() -> String
    {
        return self.Designation
    }
    
    /// This is the setter of school property of a faculty.
    /// - throws: FacultyError.invalidSchoolError
    /// - parameter school: The school of the faculty in type String.
    func setSchool(school : String) throws
    {
        try FacultyValidator.validateSchool(School: school)
        self.school = school
    }
    
    func getSchool() -> String
    {
        return self.school
    }
    
    /// This is the setter of department property of a faculty.
    /// - throws: FacultyError.invalidDepartmentError
    /// - parameter department: The department of the faculty in type String.
    func setDepartment(department : String) throws
    {
        try FacultyValidator.validateDepartment(Department: department)
        self.department = department
    }
    
    func getDepartment() -> String
    {
        return self.department
    }
    
    /// This is the setter of Date of joining property of a faculty.
    /// - throws: FacultyError.invalidDateOfJoiningError
    /// - parameter school: The date of joining of the faculty in type Date.
    func setDateOfJoining(dateOfJoining : Date) throws
    {
        try FacultyValidator.validateDateOfJoining(DateOfJoining: dateOfJoining)
        self.dateOfJoining = dateOfJoining
    }
    
    func getDateOfJoining() -> Date
    {
        return self.dateOfJoining
    }
    
    /// This is the setter of years of experience property of a faculty.
    /// - throws: FacultyError.invalidYearsOfExperienceError
    /// - parameter school: The yearsOfExperience of the faculty in type Int.
    func setYearsOfExperience(yearsOfExperience : Int) throws
    {
        try FacultyValidator.validateYearsOfExperience(YearsOfExperience: yearsOfExperience)
        self.yearsOfExperience = yearsOfExperience
    }
    
    func getYearsOfExperience() -> Int
    {
        return self.yearsOfExperience
    }
}
