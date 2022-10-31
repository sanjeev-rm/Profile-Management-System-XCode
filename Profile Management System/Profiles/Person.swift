//
//  Person.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 28/10/22.
//

import Foundation

/// This is a class representing the name of a person.
class Name
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
    
    func setFirstName(firstName : String)
    {
        self.firstName = firstName
    }
    
    func getFirstName() -> String
    {
        return self.firstName
    }
    
    func setMiddleName(middleName : String)
    {
        self.middleName = middleName
    }
    
    func getMiddleName() -> String
    {
        return self.middleName
    }
    
    func setLastName(lastName : String)
    {
        self.lastName = lastName
    }
    
    func getLastName() -> String
    {
        return self.lastName
    }
    
    /// Returns the class Name in a String format.
    /// It's like the toString() in java.
    func toString() -> String
    {
        return "\(self.firstName) \(self.middleName) \(self.lastName)"
    }
}

/// This class represents an Date.
/// With properties such as year, month, and day.
class Date
{
    private var year : Int
    private var month : Int
    private var day : Int
    
    /// This initializer takes in Int values as arguments for year, month and day.
    init(year : Int, month : Int, day : Int)
    {
        self.year = year
        self.month = month
        self.day = day
    }
    
    // Convenience initializers are secondary, supporting initializers for a class. You can define a convenience initializer to call a designated initializer from the same class as the convenience initializer with some of the designated initializer's parameters set to default values.
    // This is like constructor chaining in Java.
    /// This is an another initializer that takes in String arguments and initilizes Int values to the properties of Date.
    /// Default value is 0.
    convenience init(YearString year : String, MonthString month : String, DayString day : String)
    {
        // If the String entered can't be converted to an Int then it returns nil. So we have to give an default value. Here it's 0.
        self.init(year: Int(year) ?? 0, month: Int(month) ?? 0, day: Int(day) ?? 0)
    }
    
    func setYear(year : Int)
    {
        self.year = year
    }
    
    func getYear() -> Int
    {
        return self.year
    }
    
    func setMonth(month : Int)
    {
        self.month = month
    }
    
    func getMonth() -> Int
    {
        return self.month
    }
    
    func setDay(day : Int)
    {
        self.day = day
    }
    
    func getDay() -> Int
    {
        return self.day
    }
    
    /// Returns the instance of class in String format.
    func toString() -> String
    {
        return "\(self.day)/\(self.month)/\(self.year)"
    }
}

/// This class represents the address of a place.
class Address
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
    
    func setHouseNo(houseNo : String)
    {
        self.houseNo = houseNo
    }
    
    func getHouseNo() -> String
    {
        return self.houseNo
    }
    
    func setArea(area : String)
    {
        self.area = area
    }
    
    func getArea() -> String
    {
        return self.area
    }
    
    func setCity(city : String)
    {
        self.city = city
    }
    
    func getCity() -> String
    {
        return self.city
    }
    
    func setState(state : String)
    {
        self.state = state
    }
    
    func getState() -> String
    {
        return self.state
    }
    
    func setCountry(country : String)
    {
        self.country = country
    }
    
    func getCountry() -> String
    {
        return self.country
    }
    
    func setPincode(pincode : String)
    {
        self.pincode = pincode
    }
    
    func getPincode() -> String
    {
        return self.pincode
    }
    
    /// Returns the instance of class Address in a String format.
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
