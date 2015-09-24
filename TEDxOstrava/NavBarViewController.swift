//
//  NavBarViewController.swift
//  TEDxOstrava
//
//  Created by Svetlana Margetová on 20.09.15.
//  Copyright (c) 2015 Svetlana Margetová. All rights reserved.
//

import UIKit

class NavBarViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let navBar = UINavigationBar.appearance()
        navBar.barTintColor = UIColor.redColor()
        navBar.tintColor = UIColor.whiteColor()
        navBar.translucent = true
        navBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
