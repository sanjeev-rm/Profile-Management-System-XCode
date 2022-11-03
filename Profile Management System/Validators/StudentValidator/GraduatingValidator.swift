//
//  GraduatingValidator.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 03/11/22.
//

import Foundation

class GraduatingYear
{
    static func validateGraduatingYear(GraduatingYear graduatingYear : Int) throws
    {
        do
        {
            try DateValidator.validateYear(year: graduatingYear)
        }
        catch DateError.invalidYearError
        {
            throw GraduatingYearError.invalidYearError
        }
        catch
        {
        }
    }
}
