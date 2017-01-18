//
//  ViewController.swift
//  dictionaryApp-en
//
//  Created by Wataru Maeda on 2017/01/18.
//  Copyright © 2017 wataru maeda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
    @IBOutlet var myTextField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    
        // Add delegate to the text field so that the "textFieldShouldReturn" method will be triggered
        myTextField.delegate = self
        
        // place folder
        myTextField.placeholder = "Word..."
        
        // Change return key type to search
        myTextField.returnKeyType = .search
        
        // Show the keyboard
        myTextField.becomeFirstResponder()
    }
    
    // UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        // Come up dictionary view
        let rv = UIReferenceLibraryViewController(term: "\(textField.text ?? "")")
        self.present(rv, animated: false, completion: nil)
        
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

