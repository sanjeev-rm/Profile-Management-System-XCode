//
//  StudentCreatedViewController.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 30/10/22.
//

import UIKit

class StudentCreatedViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var dobLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var mobileLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var registrationNumberLabel: UILabel!
    @IBOutlet weak var programLabel: UILabel!
    @IBOutlet weak var branchLabel: UILabel!
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var hostellerLabel: UILabel!
    @IBOutlet weak var graduatingYearLabel: UILabel!
    
    /*Using ! which means that the interpreter will abort execution if the optional value is nil.
     * Here we are using this because we know that it will never be nil. As a profile won't even be created even if any one field is empty. and the students array will contain only Students profile with all the information filled.
     * Therefore we can use ! instead of ?? as no need to give an default value as we know it won't be nil.
     */
    /// latestStudent is the latest student profile that has been created.
    let latestStudent : Student = students.last!
    
    /// This function updates all the labels with info of the profile just created.
    func updateLabels()
    {
        nameLabel.text = latestStudent.getName().toString()
        genderLabel.text = latestStudent.getGender()
        dobLabel.text = latestStudent.getDob().toString()
        emailLabel.text = latestStudent.getEmail()
        mobileLabel.text = latestStudent.getMobile()
        addressLabel.text = latestStudent.getAddress().toString()
        registrationNumberLabel.text = latestStudent.getRegistrationNumber()
        programLabel.text = latestStudent.getProgram()
        branchLabel.text = latestStudent.getBranch()
        schoolLabel.text = latestStudent.getSchool()
        hostellerLabel.text = latestStudent.getIsHosteller()
        graduatingYearLabel.text = String(latestStudent.getGraduatingYear())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // Wrote it here as we want it to happen right after the view loaded. No need to click any button or anything.
        
        // Updates the labels with info of th latest profile created.
        updateLabels()
        
        // Changing the title of the navigation bar.
        navigationItem.title = latestStudent.getName().getFirstName() + "'s Profile"
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
