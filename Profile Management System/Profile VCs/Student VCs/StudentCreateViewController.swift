//
//  CreateViewController.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 28/10/22.
//

import UIKit

class StudentCreateViewController: UIViewController {

    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var middleNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    
    @IBOutlet weak var genderTF: UITextField!
    
    @IBOutlet weak var dobYearTF: UITextField!
    @IBOutlet weak var dobMonthTF: UITextField!
    @IBOutlet weak var dobDayTF: UITextField!
    
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var mobileTF: UITextField!
    
    @IBOutlet weak var houseNoTF: UITextField!
    @IBOutlet weak var areaTF: UITextField!
    @IBOutlet weak var cityTF: UITextField!
    @IBOutlet weak var stateTF: UITextField!
    @IBOutlet weak var countryTF: UITextField!
    @IBOutlet weak var pincodeTF: UITextField!
    
    @IBOutlet weak var registrationNoTF: UITextField!
    @IBOutlet weak var programTF: UITextField!
    @IBOutlet weak var branchTF: UITextField!
    @IBOutlet weak var schoolTF: UITextField!
    @IBOutlet weak var isHostellerTF: UITextField!
    @IBOutlet weak var graduatingYearTF: UITextField!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /// This function checks if any of the field is empty.
    /// If any field is empty returns true.
    /// If all the field are filled returns false.
    func isAnyFieldEmpty() -> Bool
    {
        if(firstNameTF.hasText && middleNameTF.hasText && lastNameTF.hasText && genderTF.hasText && dobYearTF.hasText && dobMonthTF.hasText && dobDayTF.hasText && emailTF.hasText && mobileTF.hasText && houseNoTF.hasText && areaTF.hasText && cityTF.hasText && stateTF.hasText && countryTF.hasText && pincodeTF.hasText && registrationNoTF.hasText && programTF.hasText && branchTF.hasText && schoolTF.hasText && isHostellerTF.hasText && graduatingYearTF.hasText)
        {
            return false
        }
        return true
    }
    
    func createStudentProfile() -> Student
    {
        /* ! --> is used to abort execution if the string value is nil.
         * ?? --> is used to send an default value if the value we are trying to send (text) is nil.
         * ?? is used when we are sending an optional i.e. it might be nil  or some value. To handle this we use this ?? and set an default value.
         */
        /* We are using this ! to abosrt execution if the return value is nil.
         * Because we know that the text is never going to be nil.
         * As this function won't even be called in the first plae even if any one of the fields is empty.
         */
        
        let studentName : Name = Name.init(firstName: firstNameTF.text!,
                                           middleName: middleNameTF.text!,
                                           lastName: lastNameTF.text!)
        
        let studentDob : Date = Date.init(year: Int(dobYearTF.text!) ?? 0,
                                          month: Int(dobMonthTF.text!) ?? 0,
                                          day: Int(dobDayTF.text!) ?? 0)
        
        let studentAddress : Address = Address.init(houseNo: houseNoTF.text!,
                                                    area: areaTF.text!,
                                                    city: cityTF.text!,
                                                    state: stateTF.text!,
                                                    country: countryTF.text!,
                                                    pincode: pincodeTF.text!)
        
        var studentIsHosteller : String
        {
            if(isHostellerTF.text == "Y" || isHostellerTF.text == "y" || isHostellerTF.text == "yes" || isHostellerTF.text == "YES" || isHostellerTF.text == "Yes")
            {
                return "YES"
            }
            return "NO"
        }
        
        return Student.init(Name: studentName,
                            Gender: genderTF.text!,
                            DateOfBirth: studentDob,
                            Email: emailTF.text!,
                            MobileNumber: mobileTF.text!,
                            Address: studentAddress,
                            RegistrationNumber: registrationNoTF.text!,
                            Program: programTF.text!,
                            Branch: branchTF.text!,
                            School: schoolTF.text!,
                            IsHosteller: studentIsHosteller,
                            YearOfGraduation: Int(dobYearTF.text!) ?? 0)
    }
    
    /// This function is fired when the create button is clicked.
    /// Changes the message text field's text to "All fields are compulsory" if any of the fields is empty.
    /// If all the fields are filled then performs segue to the profile created VC scene.
    @IBAction func tapCreate(_ sender: UIButton)
    {
        if(isAnyFieldEmpty())
        {
            messageLabel.text = "All fields are compulsory"
        }
        else
        {
            students.append(createStudentProfile())
            performSegue(withIdentifier: "studentCreatedSegue", sender: self)
        }
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
