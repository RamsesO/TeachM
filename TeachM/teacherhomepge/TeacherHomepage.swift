//
//  TeacherhomepageContriller.swift
//  TeachM
//
//  Created by Yan Yan on 9/28/17.
//  Copyright © 2017 Yan Yan. All rights reserved.
//

import UIKit
class TeacherhomepageController : UIViewController {
    
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        img.layer.cornerRadius = img.frame.size.width/2
        img.clipsToBounds = true
        
        
        
        // load the view first
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    
    
    
    
    
}
