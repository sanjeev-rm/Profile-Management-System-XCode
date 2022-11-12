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
    
    init(Name name: Name, Gender gender: String, DateOfBirth dob: Date, Email email: String, MobileNumber mobile: String, Address address: Address, FacultyID facultyId: String, Responsibility responsibility: String, School school: String, DateOfJoining dateOfJoining: Date, Department department: String, YearsOfExperience yearsOfExperience: Int) throws
    {
        self.facultyId = facultyId
        self.Designation = responsibility
        self.school = school
        self.department = department
        self.dateOfJoining = dateOfJoining
        self.yearsOfExperience = yearsOfExperience
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
    
    func setSchool(school : String)
    {
        self.school = school
    }
    
    func getSchool() -> String
    {
        return self.school
    }
    
    func setDateOfJoining(dateOfJoining : Date)
    {
        self.dateOfJoining = dateOfJoining
    }
    
    func setDepartment(department : String)
    {
        self.department = department
    }
    
    func getDepartment() -> String
    {
        return self.department
    }
    
    func getDateOfJoining() -> Date
    {
        return self.dateOfJoining
    }
    
    func setYearsOfExperience(yearsOfExperience : Int)
    {
        self.yearsOfExperience = yearsOfExperience
    }
    
    func getYearsOfExperience() -> Int
    {
        return self.yearsOfExperience
    }
}
