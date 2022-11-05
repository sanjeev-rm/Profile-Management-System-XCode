//
//  Student.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 28/10/22.
//

import Foundation
import UIKit

/// This class represents an student of VIT.
class Student : Person
{
    private var registrationNumber : String
    private var program : String
    private var branch : String
    private var school : String
    private var isHosteller : String
    private var graduatingYear : Int
    
    // Here in swift super class's initializer(constructor) should come after the child class's initializer(constructor).
    // Unlike in java where the super class's constructor comes first then the child class's properties are initialized.
    /// Initializer.
    /// - Throws: GraduatingYearError.typeMismatchError, GraduatingYearError.invalidYearError, EmailError.invalidEmailError, EmailError.invalidRecipientNameError, EmailError.invalidDomainNameError, MobileError.typeMismatchError, MobileError.lengthInvalidError, StudentRegistrationNumberError.invalidRegistrationNumberError
    init(Name name : Name, Gender gender : String, DateOfBirth dob : Date, Email email : String, MobileNumber  mobile : String, Address address : Address, RegistrationNumber registrationNumber : String, Program program : String, Branch branch : String, School school : String, IsHosteller isHosteller : String, GraduatingYear graduatingYear : String) throws
    {
        // This validates the info entered. and throws errors if not valid.
        try StudentValidator.validateRegistrationNumber(RegNo: registrationNumber)
        try StudentValidator.validateProgram(Program: program)
        try StudentValidator.validateBranch(Branch: branch)
        try StudentValidator.validateSchool(School: school)
        
        // This checks if the input that is string can be converted to an Int. If not it means it contains characters other than numbers.
        if(Int(graduatingYear) == nil)
        {
            throw StudentGraduatingYearError.typeMismatchError
        }
        // This is to validate if the Graduating year after making sure it's an Int, if it's valid to be an year.
        try StudentValidator.validateGraduatingYear(GraduatingYear: Int(graduatingYear)!)
        
        self.registrationNumber = registrationNumber
        self.program = program
        self.branch = branch
        self.school = school
        self.isHosteller = isHosteller
        self.graduatingYear = Int(graduatingYear)!
        try super.init(Name: name, Gender: gender, DateOfBirth: dob, Email: email, MobileNumber: mobile, Address: address)
        
        // This initializes isHosteller variable to either "YES" or "NO" according to the argument.
        self.setIsHosteller(isHosteller: isHosteller)
    }
    
    func setRegistrationNumber(registrationNumber : String) throws
    {
        try StudentValidator.validateRegistrationNumber(RegNo: registrationNumber)
        self.registrationNumber = registrationNumber
    }
    
    func getRegistrationNumber() -> String
    {
        return self.registrationNumber
    }
    
    func setProgram(program : String) throws
    {
        try StudentValidator.validateProgram(Program: program)
        self.program = program
    }
    
    func getProgram() -> String
    {
        return self.program
    }
    
    func setBranch(branch : String) throws
    {
        try StudentValidator.validateBranch(Branch: branch)
        self.branch = branch
    }
    
    func getBranch() -> String
    {
        return self.branch
    }
    
    func setSchool(school : String) throws
    {
        try StudentValidator.validateSchool(School: school)
        self.school = school
    }
    
    func getSchool() -> String
    {
        return self.school
    }
    
    // This setter sets the property isHosteller to either "YES" or "NO" according to the argument.
    func setIsHosteller(isHosteller : String)
    {
        if(isHosteller == "Y" || isHosteller == "y" || isHosteller == "yes" || isHosteller == "YES" || isHosteller == "Yes")
        {
            self.isHosteller = "YES"
        }
        else
        {
            self.isHosteller = "NO"
        }
    }
    
    func getIsHosteller() -> String
    {
        return self.isHosteller
    }
    
    func setGraduatingYear(graduatingYear : Int) throws
    {
        try StudentValidator.validateGraduatingYear(GraduatingYear: graduatingYear)
        self.graduatingYear = graduatingYear
    }
    
    func getGraduatingYear() -> Int
    {
        return self.graduatingYear
    }
}
