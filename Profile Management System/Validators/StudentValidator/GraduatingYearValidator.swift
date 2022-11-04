//
//  GraduatingValidator.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 03/11/22.
//

import Foundation

class GraduatingYearValidator
{
    static func validateGraduatingYear(GraduatingYear graduatingYear : Int) throws
    {
        do
        {
            try DateValidator.validateYear(year: graduatingYear)
            
            let currentYear : Int = Calendar.current.component(.year, from: .now)
            if(graduatingYear < currentYear)
            {
                throw GraduatingYearError.invalidYearError
            }
        }
        catch DateError.invalidYearError
        {
            throw GraduatingYearError.invalidYearError
        }
    }
}
