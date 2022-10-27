//
//  ViewController.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 19/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    // Function that is fired when button student is clicked.
    @IBAction func tapStudent(_ sender: UIButton)
    {
        performSegue(withIdentifier: "studentSegue", sender: self)
    }
    
    //Function that is called when button faculty is cliked.
    @IBAction func tapFaculty(_ sender: UIButton)
    {
        performSegue(withIdentifier: "facultySegue", sender: self)
    }
    
    // Function that is fired when button employee is clicked.
    @IBAction func tapEmployee(_ sender: UIButton)
    {
        performSegue(withIdentifier: "employeeSegue", sender: self)
    }
    
    // Function that is fired when button alumni is clicked.
    @IBAction func tapAlumni(_ sender: UIButton)
    {
        performSegue(withIdentifier: "alumniSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

