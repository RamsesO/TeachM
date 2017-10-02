//
//  Teacher.swift
//  TeachM
//
//  Created by Ramses on 9/29/17.
//  Copyright © 2017 Sina Eradat. All rights reserved.
//

import Foundation
import Firebase

struct Teacher{
    
    let key: String
    let ref: DatabaseReference?
    let name: String
    // also has list of classes
    
    init(name: String, key: String = "") {
        self.key = key
        self.name = name
        self.ref = nil
    }
    
    init(snapshot: DataSnapshot){
        key = snapshot.key
        let snapshotValue = snapshot.value as! [String: AnyObject]
        name = snapshotValue["name"] as! String
        
        // list of classes of the teacher
        ref = snapshot.ref
        
    }
}
