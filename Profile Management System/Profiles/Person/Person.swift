//
//  Person.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 28/10/22.
//

import Foundation

/// This class represents information of an person.
class Person
{
    private var name : Name
    private var gender : String
    private var dob : Date
    private var email : String
    private var mobile : String
    private var address : Address
    
    init(Name name : Name, Gender gender : String, DateOfBirth dob : Date, Email email : String, MobileNumber mobile : String, Address address : Address)
    {
        self.name = name
        self.gender = gender
        self.dob = dob
        self.email = email
        self.mobile = mobile
        self.address = address
    }
    
    func setName(name : Name)
    {
        self.name = name
    }
    
    func getName() -> Name
    {
        return self.name
    }
    
    func setGender(gender : String)
    {
        self.gender = gender
    }
    
    func getGender() -> String
    {
        return self.gender
    }
    
    func setDob(dob : Date)
    {
        self.dob = dob
    }
    
    func getDob() -> Date
    {
        return self.dob
    }
    
    func setEmail(email : String)
    {
        self.email = email
    }
    
    func getEmail() -> String
    {
        return self.email
    }
    
    func setMobile(mobile : String)
    {
        self.mobile = mobile
    }
    
    func getMobile() -> String
    {
        return self.mobile
    }
    
    func setAddress(address : Address)
    {
        self.address = address
    }
    
    func getAddress() -> Address
    {
        return self.address
    }
}
