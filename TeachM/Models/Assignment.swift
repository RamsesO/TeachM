//
//  Assignment.swift
//  TeachM
//
//  Created by Ramses on 9/28/17.
//  Copyright © 2017 Sina Eradat. All rights reserved.
//

import Foundation
import Firebase

struct Assignment{
    
    let key: String
    let ref: DatabaseReference?
    let associatedClassId: Int
    let assignmentId: Int
    let assignmentName: String
    let studentsAcknowledged: [Int]
    
    init(assignmentName: String, associatedClassId: Int, key: String = "", assignmentId: Int, studentsAcknowledged: [Int]) {
        self.key = key
        self.associatedClassId = associatedClassId
        self.assignmentId = assignmentId
        self.assignmentName = assignmentName
        self.studentsAcknowledged = studentsAcknowledged
        self.ref = nil
    }
    
    init(snapshot: DataSnapshot){
        key = snapshot.key
        let snapshotValue = snapshot.value as! [String: AnyObject]
        associatedClassId = snapshotValue["associatedClassId"] as! Int
        assignmentId = snapshotValue["assignmentId"] as! Int
        assignmentName = snapshotValue["assignmentName"] as! String
        studentsAcknowledged = snapshotValue["studentsAcknowledged"] as! [Int]
        ref = snapshot.ref
        
    }
}
