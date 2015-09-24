//
//  ViewController.swift
//  TEDxOstrava
//
//  Created by Svetlana Margetová on 20.09.15.
//  Copyright (c) 2015 Svetlana Margetová. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import KeychainAccess


class ViewController: UIViewController {
    
    let authTokenUrl = "http://tedxostrava.thebrainity.com/api/auth/token/"
    let keychain = Keychain(service: "brainity")
    let authLoginUrl = "http://tedxostrava.thebrainity.com/api/auth/login/"
    
    let tokenUse = "doplnit token"
    let eventsURL = "https://tedxostrava2015.herokuapp.com/api/cs/events"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let params = {"username" : "ondrej.david", "password" : "ondrej"}
        let url = NSURL(string: self.eventsURL)
        var mutableURLRequest = NSMutableURLRequest(URL: url!)
        mutableURLRequest.setValue("JWT"\(self.tokenUse), forHTTPHeaderField: "Authorization")
        
        mutableURLRequest.HTTPMETHOD = "GET"
        var manager = Alamofire.Manager.sharedInstance
        
       var getEvents =  manager.request(mutableURLRequest)
       
        
        
        
        
        var getEvents = Alamofire.request(Method.GET, self.eventsURL)
        getEvents.responseJSON(options: nil, completionHandler:eventsReceived)
        
        
        
        var rAuth = Alamofire.request(Method.POST, self.authTokenUrl, parameters: params)
        rAuth.responseJSON(options: nil, completeHandler: isComplete)
    
        var rTest = Alamofire.request(Method.GET, "http://tedxostrava.thebrainity.com/api/cs")
        rTest.responseJSON(options: nil, completeHandler: isComplete)

        
        
    }
    
    func eventsReceived(request:NSURLRequest, response:NSHTTPURLResponse?, data: AnyObject?, error:NSError?) -> Void
    
    func isComplete(request:NSURLRequest, response:NSHTTPURLResponse?, data: AnyObject?, error:NSError?) -> Void {
        
        let error = error
        if error != nil {
            println(error!)
            
        }
        
        let statusCode = response!.statusCode
        switch statusCode {
        case 200...299:
            let jsonData = JSON(data!)
            let token = jsonData["token"].string!
            let user = jsonData["token"].string!
            
            self.keychain["token"] = token
            self.keychain["user"] = user
            
            
        default:
            println("Erro")
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

