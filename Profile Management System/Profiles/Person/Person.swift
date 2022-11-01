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
    
    init(Name name : Name, Gender gender : String, DateOfBirth dob : Date, Email email : String, MobileNumber mobile : String, Address address : Address) throws
    {
        self.name = name
        self.gender = gender
        self.dob = dob
        self.email = email
        self.mobile = mobile
        self.address = address
        
        //
        try setEmail(email: email)
        try setMobile(mobile: mobile)
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
    
    func setEmail(email : String) throws
    {
        if(!email.contains("@"))
        {
            throw EmailError.invalidEmailError
        }
        self.email = email
    }
    
    func getEmail() -> String
    {
        return self.email
    }
    
    func setMobile(mobile : String) throws
    {
        if(mobile.count < 7 || mobile.count > 15)
        {
            throw MobileError.lengthInvalidError
        }
        else if(!isNumPresent(string: mobile))
        {
            throw MobileError.typeMismatchError
        }
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
    
    
    
    /// Function that checks if number is present in a string.
    /// If yes returns true.
    /// Else returns false.
    private func isNumPresent(string : String) -> Bool
    {
        for char in string
        {
            if(char.isNumber)
            {
                return true
            }
        }
        return false
    }
}
