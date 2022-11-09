//
//  CreatedProfiles.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 29/10/22.
//

/// File contains all the global variables used in this project.

import Foundation

/// Global Variable.
/// This is the array of all the Student profiles created.
/// This stores all the instances of Student created.
var students : [Student] = []

/// Global Variable.
/// This is the index of the student profile that has to edited in the array of students.
/// This index is in respective of the students array.
var indexOfStudentProfileToEdit : Int = 0

/// Global Variable.
/// This variable stores the current student profile that has to be displayed.
/// This is the student profile that the StudentDisplayVC displays.
var currentStudentToDisplay : Student?
