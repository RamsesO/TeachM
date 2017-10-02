//
//  Student.swift
//  TeachM
//
//  Created by Ramses on 9/28/17.
//  Copyright © 2017 Sina Eradat. All rights reserved.
//

import Foundation
import Firebase

struct Student{
    let key: String
    let ref: DatabaseReference?
    let studentId: Int
    let firstName: String
    let lastName: String
    let upvotes: Int
    let downvotes: Int
    let timesAbsent: Int
    
//    init(json: [String: Any]){
//        studentId = json["studentId"] as? Int ?? -1
//        firstName = json["firstName"] as? String ?? ""
//        lastName = json["lastName"] as? String ?? ""
//        upvotes = json["upvotes"] as? Int ?? -1
//        downvotes = json["downvotes"] as? Int ?? -1
//        timesAbsent = json["timesAbsent"] as? Int ?? -1
//    }
    
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
