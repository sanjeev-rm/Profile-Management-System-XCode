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
    
    @IBOutlet weak var messageTF: UILabel!
    
    var students : [Student] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func isAnyFieldEmpty() -> Bool
    {
        if(firstNameTF.hasText && middleNameTF.hasText && lastNameTF.hasText && genderTF.hasText && dobYearTF.hasText && dobMonthTF.hasText && dobDayTF.hasText && emailTF.hasText && mobileTF.hasText && houseNoTF.hasText && areaTF.hasText && cityTF.hasText && stateTF.hasText && countryTF.hasText && pincodeTF.hasText)
        {
            return false
        }
        messageTF.text = "All fields are compulsory"
        return true
    }
    
    @IBAction func tapCreate(_ sender: UIButton)
    {
        if(!isAnyFieldEmpty())
        {
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
