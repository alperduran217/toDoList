//
//  SecondViewController.swift
//  To Do List
//
//  Created by Mehmet Alper Duran on 3.03.2016.
//  Copyright © 2016 Alper Duran. All rights reserved.
//

import UIKit



class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBAction func addItem(sender: AnyObject) {
        
        let content:String = item.text!
        toDoList.append(content)
        
        item.text = ""
        
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList") // Kalıcı olarak içerikleri kayıt editoyr
        
        
    }
    @IBOutlet weak var item: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.item.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        
        // Boşluğa dokununca klavyeyi kaldırıyor
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        item.resignFirstResponder()
        
        return true

    }
}

