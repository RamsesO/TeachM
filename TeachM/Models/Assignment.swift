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
    let studentId: Int
    let firstName: String
    let lastName: String
    let upvotes: Int
    let downvotes: Int
    let timesAbsent: Int
    
    init(firstName: String, lastName: String, studentId: Int, key: String = "", upvotes: Int, downvotes: Int, timesAbsent: Int) {
        self.key = key
        self.firstName = firstName
        self.lastName = lastName
        self.studentId = studentId
        self.upvotes = upvotes
        self.downvotes = downvotes
        self.timesAbsent = timesAbsent
        self.ref = nil
    }
    
    init(snapshot: DataSnapshot){
        key = snapshot.key
        let snapshotValue = snapshot.value as! [String: AnyObject]
        studentId = snapshotValue["studentId"] as! Int
        upvotes = snapshotValue["upvotes"] as! Int
        downvotes = snapshotValue["downvotes"] as! Int
        timesAbsent = snapshotValue["timesAbsent"] as! Int
        firstName = snapshotValue["firstName"] as! String
        lastName = snapshotValue["lastName"] as! String
        ref = snapshot.ref
        
    }
}
