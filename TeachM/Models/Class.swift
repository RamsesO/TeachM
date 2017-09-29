//
//  Class.swift
//  TeachM
//
//  Created by Ramses on 9/29/17.
//  Copyright © 2017 Sina Eradat. All rights reserved.
//

import Foundation
import Firebase

struct Class{
    
    let key: String
    let ref: DatabaseReference?
    let classId: Int
    let numOfStudents: Int
    let numOfAssignments: Int
    let name: String
    let teacher: String
    
    init(id: Int, name: String, classId: Int, key: String = "", numOfStudents: Int, numOfAssignments: Int, teacher: String) {
        self.key = key
        self.classId = id
        self.numOfStudents = numOfStudents
        self.numOfAssignments = numOfAssignments
        self.name = name
        self.teacher = teacher
        self.ref = nil
    }
    
    init(snapshot: DataSnapshot){
        key = snapshot.key
        let snapshotValue = snapshot.value as! [String: AnyObject]
        classId = snapshotValue["classId"] as! Int
        numOfStudents = snapshotValue["numOfStudents"] as! Int
        numOfAssignments = snapshotValue["numOfAssignments"] as! Int
        name = snapshotValue["name"] as! String
        teacher = snapshotValue["teacher"] as! String
        ref = snapshot.ref
        
    }
}
