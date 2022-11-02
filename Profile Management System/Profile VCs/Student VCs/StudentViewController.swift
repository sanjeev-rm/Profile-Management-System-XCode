//
//  StudentViewController.swift
//  Profile Management System
//
//  Created by Sanjeev RM on 27/10/22.
//

import UIKit

class StudentViewController: UIViewController {
    
    /// Functions fired when the button create is clicked.
    @IBAction func tapCreate(_ sender: UIButton)
    {
        performSegue(withIdentifier: "studentCreateSegue", sender: self)
    }
    
    /// Function fired when the button edit is clicked.
    @IBAction func tapEdit(_ sender: UIButton)
    {
        performSegue(withIdentifier: "studentEditSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
