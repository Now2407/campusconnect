//
//  LoginViewController.swift
//  CampusApp
//
//  Created by Noah Marriott on 10/25/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var lgPasswordTxt: UITextField!
    @IBOutlet weak var lgUsernameTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logMeIn(sender: AnyObject) {
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
