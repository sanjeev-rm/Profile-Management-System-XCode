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
    init(Name name : Name, Gender gender : String, DateOfBirth dob : Date, Email email : String, MobileNumber  mobile : String, Address address : Address, RegistrationNumber registrationNumber : String, Program program : String, Branch branch : String, School school : String, IsHosteller isHosteller : String, GraduatingYear graduatingYear : String) throws
    {
        self.registrationNumber = registrationNumber
        self.program = program
        self.branch = branch
        self.school = school
        self.isHosteller = isHosteller
        self.graduatingYear = Int(graduatingYear) ?? 0
        try super.init(Name: name, Gender: gender, DateOfBirth: dob, Email: email, MobileNumber: mobile, Address: address)
        
        // This initializes isHosteller variable to either "YES" or "NO" according to the argument.
        self.setIsHosteller(isHosteller: isHosteller)
    }
    
    func setRegistrationNumber(registrationNumber : String)
    {
        self.registrationNumber = registrationNumber
    }
    
    func getRegistrationNumber() -> String
    {
        return self.registrationNumber
    }
    
    func setProgram(program : String)
    {
        self.program = program
    }
    
    func getProgram() -> String
    {
        return self.program
    }
    
    func setBranch(branch : String)
    {
        self.branch = branch
    }
    
    func getBranch() -> String
    {
        return self.branch
    }
    
    func setSchool(school : String)
    {
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
    
    func setGraduatingYear(graduatingYear : Int)
    {
        self.graduatingYear = graduatingYear
    }
    
    func getGraduatingYear() -> Int
    {
        return self.graduatingYear
    }
}
