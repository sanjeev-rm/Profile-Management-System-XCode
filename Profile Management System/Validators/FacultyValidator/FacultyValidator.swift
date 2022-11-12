//
//  FacultyValidator.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 12/11/22.
//

import Foundation

class FacultyValidator
{
    
    func validateSchool(School school : String) throws
    {
        do
        {
            try Validators.validateString(string: school)
        }
        catch Errors.typeMismatchError
        {
            throw FacultySchoolError.invalidSchoolError
        }
    }
    
    func validateDepartment(Department department : String) throws
    {
        do
        {
            try Validators.validateString(string: department)
        }
        catch Errors.typeMismatchError
        {
            throw FacultyDepartmentError.invalidDepartmentError
        }
    }
}
