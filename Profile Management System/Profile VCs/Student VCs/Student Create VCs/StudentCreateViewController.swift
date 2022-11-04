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
    
    
    
    /// This function checks if any of the text field is empty.
    /// - returns: true if none of the text firlds are empty. false if any of the text field is empty.
    func isAnyFieldEmpty() -> Bool
    {
        if(firstNameTF.hasText && middleNameTF.hasText && lastNameTF.hasText && genderTF.hasText && dobYearTF.hasText && dobMonthTF.hasText && dobDayTF.hasText && emailTF.hasText && mobileTF.hasText && houseNoTF.hasText && areaTF.hasText && cityTF.hasText && stateTF.hasText && countryTF.hasText && pincodeTF.hasText && registrationNoTF.hasText && programTF.hasText && branchTF.hasText && schoolTF.hasText && isHostellerTF.hasText && graduatingYearTF.hasText)
        {
            return false
        }
        return true
    }
    
    
    
    // This function is called when the Create button is clicked and the user has filled all the text fields.
    /// This function creates a student profile and returns it.
    /// Creates an student instance with the text field inputs.
    /// - throws: DateError, EmailError, MobileError.
    /// - returns: an instance of Student.
    func createStudentProfile() throws -> Student
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
        
        let studentDob : Date = try Date.init(YearString: dobYearTF.text!,
                                               MonthString: dobMonthTF.text!,
                                               DayString: dobDayTF.text!)
        
        let studentAddress : Address = Address.init(houseNo: houseNoTF.text!,
                                                    area: areaTF.text!,
                                                    city: cityTF.text!,
                                                    state: stateTF.text!,
                                                    country: countryTF.text!,
                                                    pincode: pincodeTF.text!)
        
        // This is defining and initializing an variable according to a condition.
        var studentIsHosteller : String
        {
            if(isHostellerTF.text == "Y" || isHostellerTF.text == "y" || isHostellerTF.text == "yes" || isHostellerTF.text == "YES" || isHostellerTF.text == "Yes")
            {
                return "YES"
            }
            return "NO"
        }
        
        // returning an instance of Student.
        return try Student.init(Name: studentName,
                                Gender: genderTF.text!,
                                DateOfBirth: studentDob,
                                Email: emailTF.text!,
                                MobileNumber: mobileTF.text!,
                                Address: studentAddress,
                                RegistrationNumber: registrationNoTF.text!,
                                Program: programTF.text!,
                                Branch: branchTF.text!,
                                School: schoolTF.text!,
                                IsHosteller: isHostellerTF.text!,
                                GraduatingYear: graduatingYearTF.text!)
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
            do
            {
                // Inserts the created profile to the students array.
                try students.append(createStudentProfile())
                
                // Setting the currentStudentToDisplay to the lates profile we created.
                // As we want to display that profile in the next view.
                // students.last because the latest profile created is appended to the end of the array.
                currentStudentToDisplay = students.last
                
                // Moving to the next Display view.
                performSegue(withIdentifier: "studentCreatedSegue", sender: self)
            }
            catch DateError.invalidYearError
            {
                dobYearTF.text = ""
                dobYearTF.placeholder = "Invalid Year [valid : contains 4 digits]"
                messageLabel.text = "Please check your DOB inputs"
            }
            catch DateError.invalidMonthError
            {
                dobMonthTF.text = ""
                dobMonthTF.placeholder = "Invalid Month [valid : 1 - 12]"
                messageLabel.text = "Please check your DOB inputs"
            }
            catch DateError.invalidDayError
            {
                dobDayTF.text = ""
                dobDayTF.placeholder = "Invalid Day of month [valid : 1 - 31 / 29]"
                messageLabel.text = "Please check your DOB"
            }
            catch DateError.typeMismatchError
            {
                messageLabel.text = "Please enter only integers for DOB"
            }
            catch EmailError.invalidEmailError
            {
                messageLabel.text = "Please check your email"
                emailTF.text = ""
                emailTF.placeholder = "Invalid Email"
            }
            catch EmailError.invalidRecipientNameError
            {
                messageLabel.text = "Please check your email"
                emailTF.text = ""
                emailTF.placeholder = "Invalid Email [Invalid recipient name]"
            }
            catch EmailError.invalidDomainNameError
            {
                messageLabel.text = "Please check your email"
                emailTF.text = ""
                emailTF.placeholder = "Invalid Email [invalid domain name]"
            }
            catch MobileError.lengthInvalidError
            {
                messageLabel.text = "Please check your mobile digits"
                mobileTF.text = ""
                mobileTF.placeholder = "Invalid Mobile [valid no of digits : min-7, max-15]"
            }
            catch MobileError.typeMismatchError
            {
                messageLabel.text = "Please check your mobile digits"
                mobileTF.text = ""
                mobileTF.placeholder = "Invalid Mobile [valid : should contain digits]"
            }
            catch GraduatingYearError.typeMismatchError
            {
                messageLabel.text = "Please check your graduating year inputs"
                graduatingYearTF.text = ""
                graduatingYearTF.placeholder = "Invalid graduating year [valid : should only contain Integers]"
            }
            catch GraduatingYearError.invalidYearError
            {
                messageLabel.text = "Please check your graduating year inputs"
                graduatingYearTF.text = ""
                graduatingYearTF.placeholder = "Invalid [valid : contains 4 digits, In the future]"
            }
            catch
            {
                print("Handle the errors well")
            }
        }
    }
    
    
    
    /// This function prepare is used to transfer information from one VC to another.
    /// Here this function is used to set the Student Display View Controller's navigation bar title and prompt.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // Sets the navigation bars title.
        segue.destination.navigationItem.title = firstNameTF.text! + "'s Profile"
        
        // Sets the navigation bars prompt.
        segue.destination.navigationItem.prompt = "Profile Created"
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
