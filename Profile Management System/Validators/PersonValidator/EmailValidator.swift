//
//  EmailValidator.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 02/11/22.
//

import Foundation

/// This class consists of methods to validate an email.
class EmailValidator
{
    /// Function to validate an email.
    /// - parameter email: The email string to validate.
    /// - throws: EmailError.invalidEmailError, EmailError.invalidRecipientError, EmailError.invalidDomainError
    static func validateEmail(Email email : String) throws
    {
        // Condition to validate basic need of an email the '@' sign.
        if(!email.contains("@"))
        {
            throw EmailError.invalidEmailError
        }
        
        // If @ is present then we move ahead and check the recipient and domain name of the email.
        let indexOfAtherate : Int = indexOfChar(character: "@", stringToSearchIn: email)
        let indexOfDot : Int = firstDotIndexAfterAtherate(indexOfAtherate: indexOfAtherate, string: email)
        
        // Condition to validate recipient name of the email.
        // i.e. before @.
        // Maximum number of characters in recipient name is 64.
        if((indexOfAtherate == 0) || (indexOfAtherate > 64))
        {
            throw EmailError.invalidRecipientNameError
        }
        
        // condition to validate domain name of the email.
        // i.e. after @ and between '.'.
        // Maximum number of characters in domain name is 253. Minimum is 1 (I guess..?).
        if((indexOfDot == -1) || (indexOfDot == indexOfAtherate + 1) || ((indexOfDot - indexOfAtherate) > 253))
        {
            throw EmailError.invalidDomainNameError
        }
    }
    
    // Helping function.
    /// Function to get the index of the character in the string.
    /// Returns the first index of the character.
    /// If character not present then returns -1.
    /// - parameter character: character to search and the string to search the character in.
    /// - parameter string: string to search the character in,
    /// - returns: Int index of the character in the string. If character not found returns -1.
    private static func indexOfChar(character characterToSearch : Character, stringToSearchIn string : String) -> Int
    {
        var index : Int = 0
        for character in string
        {
            if(character == characterToSearch)
            {
                return index
            }
            index+=1
        }
        return -1
    }
    
    // Helping function.
    /// Function to get the first index of the '.' (dot) after the '@' in an string(email).
    /// - parameter indexOfAtherate: int index of atherate in the string.
    /// - parameter string: string to search for the index of the dot right after.
    /// - returns: Int index of the first dot '.' that comes after '@' in the string(email). Returns -1 if there is no dot '.' after @.
    private static func firstDotIndexAfterAtherate(indexOfAtherate : Int, string : String) -> Int
    {
        var index : Int = 0
        for character in string
        {
            if(index > indexOfAtherate && character == ".")
            {
                return index
            }
            
            index+=1
        }
        return -1
    }
}
