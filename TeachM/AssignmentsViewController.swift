//
//  AssignmentsViewController.swift
//  TeachM
//
//  Created by Sina Eradat on 9/25/17.
//  Copyright © 2017 Sina Eradat. All rights reserved.
//

import UIKit
import Firebase

class AssignmentsViewController: UIViewController {
    
    //properties
    var assignmentItems: [Assignment] = []
    let assignmentRef = Database.database().reference(withPath: "assignments")

    @IBAction func test(_ sender: UIButton) {
      
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        assignmentRef.observe(.value, with: { snapshot in
            
            var newItems: [Assignment] = []
            
            for item in snapshot.children {
                let assignmentItem = Assignment(snapshot: item as! DataSnapshot)
                
                newItems.append(assignmentItem)
            }
            
            self.assignmentItems = newItems
            
            
            //PUT THE GENERATOR FOR STUDENT STUFF HERE
            for assignment in self.assignmentItems{
                print(assignment.assignmentName)
            }
        })
        
        for assignment in self.assignmentItems{
            print(assignment.assignmentName)
        }
        
        
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
