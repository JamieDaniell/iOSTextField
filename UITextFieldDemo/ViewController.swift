//
//  ViewController.swift
//  UITextFieldDemo
//ww
//  Created by Pasan Premaratne on 7/8/15.
//  Copyright (c) 2015 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{

    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // method called when character type or removed
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool
    {
        // calculate length of striwng in the field
        let length = textField.text!.characters.count - range.length + string.characters.count
        // if there are characters
        if length > 0
        {
            submitButton.enabled = true
        } else
        {
            submitButton.enabled = false
        }
        // always return true as expected
        return true
    }


}









