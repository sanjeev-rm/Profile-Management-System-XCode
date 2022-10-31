//
//  Name.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 31/10/22.
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
