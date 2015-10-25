//
//  SIgnupViewController.swift
//  CampusApp
//
//  Created by Noah Marriott on 10/25/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class SIgnupViewController: UIViewController {
    
  

    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var usernameTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signMeUp(sender: AnyObject) {
        
        
        
        // begining of the url
        
        let url = NSURL(string: "http://localhost:2403/users/login")
        
        //create the request
        
        let request = NSMutableURLRequest(URL: url!)
        
        //set the request type
        
        request.HTTPMethod = "POST"
        
        // create the url data
        
        let newuser = "password=\(passwordTxt)&username=\(usernameTxt)"
        
        // encode the url
        
        request.HTTPBody = newuser.dataUsingEncoding(NSUTF8StringEncoding)
        
        // pass the response up to the
        
        let task = NSURLSession.sharedSession().dataTaskWithRequest(request){
            
            data, response, error in
            print(response)
            if error != nil{
                
            }else{
                print(data)
                let str = NSString(data: data!, encoding: NSASCIIStringEncoding)
                print(str)
            }
            
        }
        
        //resume task
        task.resume()
        
        
        

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
