//
//  Person.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 28/10/22.
//

import Foundation

/// This is the structure of Name of a person.
struct Name
{
    private var firstName : String
    private var middleName : String
    private var lastName : String
    
    init(firstName : String, middleName : String, lastName : String)
    {
        self.firstName = firstName
        self.middleName = middleName
        self.lastName = lastName
    }
    
    // Have to use the keyword mutating inside structures.
    mutating func setFirstName(firstName : String)
    {
        self.firstName = firstName
    }
    
    func getFirstName() -> String
    {
        return self.firstName
    }
    
    mutating func setMiddleName(middleName : String)
    {
        self.middleName = middleName
    }
    
    func getMiddleName() -> String
    {
        return self.middleName
    }
    
    mutating func setLastName(lastName : String)
    {
        self.lastName = lastName
    }
    
    func getLastName() -> String
    {
        return self.lastName
    }
    
    /// Function to return an instance of Name in string format.
    /// It's like the toString() in java.
    func toString() -> String
    {
        return "\(self.firstName) \(self.middleName) \(self.lastName)"
    }
}

/// This is the structure of a date.
struct Date
{
    private var year : Int
    private var month : Int
    private var day : Int
    
    init(year : Int, month : Int, day : Int)
    {
        self.year = year
        self.month = month
        self.day = day
    }
    
    func toString() -> String
    {
        return "\(self.day)/\(self.month)/\(self.year)"
    }
}

/// This is the structure of an Address of a place.
struct Address
{
    private var houseNo : String
    private var area : String
    private var city : String
    private var state : String
    private var country : String
    private var pincode : String
    
    init(houseNo : String, area : String, city : String, state : String, country : String, pincode : String)
    {
        self.houseNo = houseNo
        self.area = area
        self.city = city
        self.state = state
        self.country = country
        self.pincode = pincode
    }
    
    func toString() -> String
    {
        return "\(self.houseNo), \(self.area), \(self.city), \(self.state), \(self.country), \(self.pincode)"
    }
}

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
