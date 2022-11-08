//
//  CreateViewController.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 28/10/22.
//

import UIKit

class StudentCreateViewController: UIViewController {

    /// **TEXT FIELDS **
    
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
    
    /// **ERROR LABELS**
    
    @IBOutlet weak var firstNameErrorLabel: UILabel!
    @IBOutlet weak var middleNameErrorLabel: UILabel!
    @IBOutlet weak var lastNameErrorLabel: UILabel!
    
    @IBOutlet weak var genderErrorLabel: UILabel!
    
    @IBOutlet weak var dobYearErrorLabel: UILabel!
    @IBOutlet weak var dobMonthErrorLabel: UILabel!
    @IBOutlet weak var dobDayErrorLabel: UILabel!
    
    @IBOutlet weak var emailErrorLabel: UILabel!
    
    @IBOutlet weak var mobileErrorLabel: UILabel!
    
    @IBOutlet weak var addressHouseNoErrorLabel: UILabel!
    @IBOutlet weak var addressAreaErrorLabel: UILabel!
    @IBOutlet weak var addressCityErrorLabel: UILabel!
    @IBOutlet weak var addressStateErrorLabel: UILabel!
    @IBOutlet weak var addressCountryErrorLabel: UILabel!
    @IBOutlet weak var addressPincodeErrorLabel: UILabel!
    
    @IBOutlet weak var studentRegistrationNoErrorLabel: UILabel!
    @IBOutlet weak var studentProgramErrorLabel: UILabel!
    @IBOutlet weak var studentBranchErrorLabel: UILabel!
    @IBOutlet weak var studentSchoolErrorLabel: UILabel!
    @IBOutlet weak var studentHostellerErrorLabel: UILabel!
    @IBOutlet weak var studentGraduatingYearErrorLabel: UILabel!
    
    /// Error message label that is shown at the end of the view / page.
    @IBOutlet weak var messageLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        /// This resets the error labels to "".
        resetErrorLabels()
    }
    
    
    
    /// This function returns an array of all the TextFields in this View(Class).
    /// The elements are arranged in order respective to the View.
    /// - returns: [UITextField]
    func getTextFieldsArray() -> [UITextField]
    {
        let textFieldsArray : [UITextField] = [firstNameTF, middleNameTF, lastNameTF, genderTF, dobYearTF, dobMonthTF, dobDayTF, emailTF, mobileTF, houseNoTF, areaTF, cityTF, stateTF, countryTF, pincodeTF, registrationNoTF, programTF, branchTF, schoolTF, isHostellerTF, graduatingYearTF]
        return textFieldsArray
    }
    
    
    
    /// This function returns array of all the Labels in this View(Class).
    /// The elements are arranged in order with respective to the View.
    /// - returns: [UILabel]
    func getErrorLabelsArray() -> [UILabel]
    {
        let errorLabelsArray : [UILabel] = [firstNameErrorLabel, middleNameErrorLabel, lastNameErrorLabel, genderErrorLabel, dobYearErrorLabel, dobMonthErrorLabel, dobDayErrorLabel, emailErrorLabel, mobileErrorLabel, addressHouseNoErrorLabel, addressAreaErrorLabel, addressCityErrorLabel, addressStateErrorLabel, addressCountryErrorLabel, addressPincodeErrorLabel, studentRegistrationNoErrorLabel, studentProgramErrorLabel, studentBranchErrorLabel, studentSchoolErrorLabel, studentHostellerErrorLabel, studentGraduatingYearErrorLabel]
        return errorLabelsArray
    }
    
    
    
    /// This function resets all the error labels.
    /// It resets all the labels to "".
    func resetErrorLabels()
    {
        for errorlabel in getErrorLabelsArray()
        {
            errorlabel.text = ""
        }
    }
    
    
    
    /// This function checks if any of the text field is empty.
    /// If any field is empty then changes the error label of the respective field to "Empty".
    /// - returns: true if none of the text fields are empty. false if any of the text field is empty.
    func isAnyFieldEmpty() -> Bool
    {
        var index = 0;
        var isEmpty = false;
        for textField in getTextFieldsArray()
        {
            if(!textField.hasText)
            {
                getErrorLabelsArray()[index].text = "Empty"
                isEmpty = true
            }
            index+=1
        }
        
        return isEmpty
    }
    
    
    
    // This function is called when the Create button is clicked and the user has filled all the text fields.
    /// This function creates a student profile and returns it.
    /// Creates an student instance with the text field inputs.
    /// - throws: DateError, EmailError, MobileError, AddressError, GraduatingYearError
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
        
        let studentAddress : Address = try Address.init(houseNo: houseNoTF.text!,
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
        // This resets all the old error labels.
        resetErrorLabels()
        messageLabel.text = ""
        
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
                dobYearErrorLabel.text = "Invalid Year [valid : contains 4 digits]"
                messageLabel.text = "Please check your DOB inputs"
            }
            catch DateError.invalidMonthError
            {
                dobMonthErrorLabel.text = "Invalid Month [valid : 1 - 12]"
                messageLabel.text = "Please check your DOB inputs"
            }
            catch DateError.invalidDayError
            {
                dobYearErrorLabel.text = "Invalid Day of month [valid : 1 - 31 / 29]"
                messageLabel.text = "Please check your DOB"
            }
            catch DateError.typeMismatchError
            {
                messageLabel.text = "Please enter only integers for DOB"
            }
            catch EmailError.invalidEmailError
            {
                emailErrorLabel.text = "Invalid Email"
                messageLabel.text = "Please check your email"
            }
            catch EmailError.invalidRecipientNameError
            {
                emailErrorLabel.text = "Invalid Email [Invalid recipient name]"
                messageLabel.text = "Please check your email"
            }
            catch EmailError.invalidDomainNameError
            {
                emailErrorLabel.text = "Invalid Email [invalid domain name]"
                messageLabel.text = "Please check your email"
            }
            catch MobileError.lengthInvalidError
            {
                mobileErrorLabel.text = "Invalid Mobile [valid no of digits : min-7, max-15]"
                messageLabel.text = "Please check your mobile digits"
            }
            catch MobileError.typeMismatchError
            {
                mobileErrorLabel.text = "Invalid Mobile [valid : should contain digits]"
                messageLabel.text = "Please check your mobile digits"
            }
            catch StudentRegistrationNumberError.invalidRegistrationNumber
            {
                studentRegistrationNoErrorLabel.text = "Invalid Registration number"
                messageLabel.text = "Please check your registration number input"
            }
            catch StudentProgramError.invalidProgramError
            {
                studentProgramErrorLabel.text = "Invalid Program"
                messageLabel.text = "please chek your program input"
            }
            catch StudentBranchError.invalidBranchError
            {
                studentBranchErrorLabel.text = "Invalid Branch"
                messageLabel.text = "Please check your branch input"
            }
            catch StudentSchoolError.invalidSchoolError
            {
                studentSchoolErrorLabel.text = "Invalid School"
                messageLabel.text = "Please check your school input"
            }
            catch StudentGraduatingYearError.typeMismatchError
            {
                studentGraduatingYearErrorLabel.text = "Invalid graduating year [valid : should only contain Integers]"
                messageLabel.text = "Please check your graduating year inputs"
            }
            catch StudentGraduatingYearError.invalidYearError
            {
                studentGraduatingYearErrorLabel.text = "Invalid [valid : contains 4 digits, In the future]"
                messageLabel.text = "Please check your graduating year inputs"
            }
            catch AddressError.invalidPincodeError
            {
                addressPincodeErrorLabel.text = "Invalid Pincode [valid : contains exactly 6 characters]"
                messageLabel.text = "Please check your Pincode inputs"
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
