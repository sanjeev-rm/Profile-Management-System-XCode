//
//  Address.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 31/10/22.
//

import Foundation

/// This class represents the address of a place.
class Address : CustomStringConvertible
{
    private var houseNo : String
    private var area : String
    private var city : String
    private var state : String
    private var country : String
    private var pincode : String
    
    /// Returns the instance of class Address in a String format.
    var description: String
    {
        return "\(self.houseNo), \(self.area), \(self.city), \(self.state), \(self.country), \(self.pincode)"
    }
    
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
}
