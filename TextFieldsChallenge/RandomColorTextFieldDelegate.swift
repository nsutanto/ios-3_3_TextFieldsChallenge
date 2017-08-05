//
//  RandomColorTextFieldDelegate.swift
//  TextFieldsChallenge
//
//  Created by Nicholas Sutanto on 8/4/17.
//  Copyright © 2017 Nicholas Sutanto. All rights reserved.
//

import UIKit

class RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate{
    
    let colors = [UIColor.red,
                  UIColor.orange, UIColor.yellow,
                  UIColor.green, UIColor.blue,
                  UIColor.purple, UIColor.brown];
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textField.textColor = self.randomColor()
        
        return true
    }
    
    func randomColor() -> UIColor {
        let randomIndex = Int(arc4random() % UInt32(colors.count))
        
        return colors[randomIndex]
    }


}
