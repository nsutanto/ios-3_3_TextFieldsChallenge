//
//  ZipCodeTextFieldDelegate.swift
//  TextFieldsChallenge
//
//  Created by Nicholas Sutanto on 8/4/17.
//  Copyright © 2017 Nicholas Sutanto. All rights reserved.
//

import UIKit
import Foundation

class ZipCodeTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        return newText.length <= 5
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }


}
