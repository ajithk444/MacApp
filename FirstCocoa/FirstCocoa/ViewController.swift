//
//  ViewController.swift
//  FirstCocoa
//
//  Created by Ajith Kumar on 06/07/18.
//  Copyright © 2018 Ajith Kumar. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var txtUserName: NSTextField!
    @IBOutlet weak var txtPassword: NSTextField!
    
    @IBOutlet weak var lblOutput: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func onLoginPressed(_ sender: Any) {
        let name = txtUserName.stringValue
        let password = txtPassword.stringValue
        if(!name.isEmpty && !password.isEmpty)
        {
            lblOutput.stringValue = "Welcome \(name)"
        }
        else
        {
            lblOutput.stringValue = "Please enter text in all the fields"
            return
        }
        clearInputFields()
    }
    
    func clearInputFields(){
        txtUserName.stringValue=""
        txtPassword.stringValue=""
    }
    
}

