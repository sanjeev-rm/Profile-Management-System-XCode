//
//  StudentEditViewController.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 28/10/22.
//

import UIKit

class StudentEditViewController: UIViewController {
    
    @IBOutlet weak var registrationNumberTF: UITextField!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    /// Function that fires when button Enter is clicked.
    /// This function first checks if the registrationNumber text field has a text.
    /// If Yes then compares the registration eneter by the user to all the student profiles in the students array. If the registration number matches then performs segue. If none matches then shows message "No Such Profile".
    /// If No then shows message "No Such Profile".
    @IBAction func tapEnter(_ sender: UIButton)
    {
        if(registrationNumberTF.hasText)
        {
            for student in students
            {
                if(student.getRegistrationNumber() == registrationNumberTF.text)
                {
                    performSegue(withIdentifier: "studentEditOptionSegue", sender: self)
                    return
                }
            }
            messageLabel.text = "No Such Profile"
        }
        else
        {
            messageLabel.text = "No Such Profile"
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
