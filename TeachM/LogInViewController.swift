//
//  LogInViewController.swift
//  TeachM
//
//  Created by Sina Eradat on 9/20/17.
//  Copyright © 2017 Sina Eradat. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    
    let master_UserName = "Sina"
    let master_Password = "1234"
    
    @IBOutlet weak var user_Name: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBAction func logIn(_ sender: UIButton) {
        if user_Name.text! == master_UserName{
            if password.text! == master_Password{
                
            }//end password check
        }//end user name check
    }//end log in
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
