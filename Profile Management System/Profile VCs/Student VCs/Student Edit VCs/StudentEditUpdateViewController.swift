//
//  StudentEditUpdateViewController.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 30/10/22.
//

import UIKit

class StudentEditUpdateViewController: UIViewController {

    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var middleNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var genderTF: UITextField!
    @IBOutlet weak var dobYearTF: UITextField!
    @IBOutlet weak var dobMonthTF: UITextField!
    @IBOutlet weak var dobDayTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var mobileTF: UITextField!
    @IBOutlet weak var addressHouseNoTF: UITextField!
    @IBOutlet weak var addressAreaTF: UITextField!
    @IBOutlet weak var addressCityTF: UITextField!
    @IBOutlet weak var addressStateTF: UITextField!
    @IBOutlet weak var addressCountryTF: UITextField!
    @IBOutlet weak var addressPincodeTF: UITextField!
    @IBOutlet weak var registrationNumberTF: UITextField!
    @IBOutlet weak var programTF: UITextField!
    @IBOutlet weak var branchTF: UITextField!
    @IBOutlet weak var schoolTF: UITextField!
    @IBOutlet weak var hostellerTF: UITextField!
    @IBOutlet weak var graduatingYearTF: UITextField!
    
    @IBOutlet weak var messageTF: UILabel!
    
    var studentToEdit : Student = students[indexOfStudentProfileToEdit]
    
    
    
    /// Function to set the text fields text to old(current) values of the student's properties.
    func setTextFieldsText()
    {
        firstNameTF.text = studentToEdit.getName().getFirstName()
        middleNameTF.text = studentToEdit.getName().getMiddleName()
        lastNameTF.text = studentToEdit.getName().getLastName()
        genderTF.text = studentToEdit.getGender()
        dobYearTF.text = String(studentToEdit.getDob().getYear())
        dobMonthTF.text = String(studentToEdit.getDob().getMonth())
        dobDayTF.text = String(studentToEdit.getDob().getDay())
        emailTF.text = studentToEdit.getEmail()
        mobileTF.text = studentToEdit.getMobile()
        addressHouseNoTF.text = studentToEdit.getAddress().getHouseNo()
        addressAreaTF.text = studentToEdit.getAddress().getArea()
        addressCityTF.text = studentToEdit.getAddress().getCity()
        addressStateTF.text = studentToEdit.getAddress().getState()
        addressCountryTF.text = studentToEdit.getAddress().getCountry()
        addressPincodeTF.text = studentToEdit.getAddress().getPincode()
        registrationNumberTF.text = studentToEdit.getRegistrationNumber()
        programTF.text = studentToEdit.getProgram()
        branchTF.text = studentToEdit.getBranch()
        schoolTF.text = studentToEdit.getSchool()
        hostellerTF.text = studentToEdit.getIsHosteller()
        graduatingYearTF.text = String(studentToEdit.getGraduatingYear())
    }
    
    
    
    /// Function to set the new edited values from the text fields to the student instance(profile).
    func setNewStudentProperties()
    {
        studentToEdit.setName(name: Name.init(firstName: firstNameTF.text!,
                                              middleName: middleNameTF.text!,
                                              lastName: lastNameTF.text!))
        
        studentToEdit.setGender(gender: genderTF.text!)
        
        studentToEdit.setDob(dob: try! Date.init(YearString: dobYearTF.text!,
                                            MonthString: dobMonthTF.text!,
                                            DayString: dobDayTF.text!))
        
        try! studentToEdit.setEmail(email: emailTF.text!)
        
        try! studentToEdit.setMobile(mobile: mobileTF.text!)
        
        studentToEdit.setAddress(address: try! Address.init(houseNo: addressHouseNoTF.text!,
                                                       area: addressAreaTF.text!,
                                                       city: addressCityTF.text!,
                                                       state: addressStateTF.text!,
                                                       country: addressCountryTF.text!,
                                                       pincode: addressPincodeTF.text!))
        
        try! studentToEdit.setRegistrationNumber(registrationNumber: registrationNumberTF.text!)
        try! studentToEdit.setProgram(program: programTF.text!)
        try! studentToEdit.setBranch(branch: branchTF.text!)
        try! studentToEdit.setSchool(school: schoolTF.text!)
        studentToEdit.setIsHosteller(isHosteller: hostellerTF.text!)
        try! studentToEdit.setGraduatingYear(graduatingYear: Int(graduatingYearTF.text!)!)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        /// This sets the title of the navigation bar.
        navigationItem.title = "Update " + studentToEdit.getName().getFirstName() + "'s Profile"
        
        /// This sets the text fields' texts to the current(default or old) values of the student profile.
        setTextFieldsText()
    }
    
    
    
    /// This function checks if any of the text field is empty.
    /// - returns: true if none of the text firlds are empty. false if any of the text field is empty.
    func isAnyFieldEmpty() -> Bool
    {
        if(firstNameTF.hasText && middleNameTF.hasText && lastNameTF.hasText && genderTF.hasText && dobYearTF.hasText && dobMonthTF.hasText && dobDayTF.hasText && emailTF.hasText && mobileTF.hasText && addressHouseNoTF.hasText && addressAreaTF.hasText && addressCityTF.hasText && addressStateTF.hasText && addressCountryTF.hasText && addressPincodeTF.hasText && registrationNumberTF.hasText && programTF.hasText && branchTF.hasText && schoolTF.hasText && hostellerTF.hasText && graduatingYearTF.hasText)
        {
            return false
        }
        return true
    }
    
    
    
    /// This function is fired when the update button is clicked.
    @IBAction func tapUpdate(_ sender: UIButton)
    {
        if(isAnyFieldEmpty())
        {
            messageTF.text = "All fields are compulsory"
        }
        else
        {
            // Updating the values.
            setNewStudentProperties()
            
            // Setting the currentStudentToDisplay to the lates profile we edited.
            // As we want to display that profile in the next view.
            // students.last because the latest profile created is appended to the end of the array.
            currentStudentToDisplay = studentToEdit
            
            // Moving to the next Display view.
            performSegue(withIdentifier: "studentEditedSegue", sender: self)
        }
    }
    
    
    
    /// This function prepare is used to transfer information from one VC to another.
    /// Here this function is used to set the Student Display View Controller's navigation bar title and prompt.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // Sets the navigation bars title.
        segue.destination.navigationItem.title = studentToEdit.getName().getFirstName() + "'s Profile"
        
        // Sets the navigation bars prompt.
        segue.destination.navigationItem.prompt = "Profile Edited"
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
