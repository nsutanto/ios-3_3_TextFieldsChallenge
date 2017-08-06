//
//  ViewController.swift
//  TextFieldsChallenge
//
//  Created by Nicholas Sutanto on 8/4/17.
//  Copyright © 2017 Nicholas Sutanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textFieldZipCode: UITextField!
    @IBOutlet weak var textFieldDollar: UITextField!
    @IBOutlet weak var textFieldRandomColor: UITextField!
    @IBOutlet weak var editingSwitch: UISwitch!
    @IBOutlet weak var textFieldEmoji: UITextField!
    @IBOutlet weak var textFieldColor: UITextField!
    @IBOutlet weak var textFieldCounter: UITextField!
    
    @IBOutlet weak var labelCounter: UILabel!
    
    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    let cashDelegate = CashTextFieldDelegate()
    let randomColorDelegate = RandomColorTextFieldDelegate()
    let emojiTextFieldDelegate = EmojiTextFieldDelegate()
    let colorTextFieldDelegate = ColorTextFieldDelegate()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldZipCode.delegate = zipCodeDelegate
        textFieldDollar.delegate = cashDelegate
        textFieldRandomColor.delegate = randomColorDelegate
        
        editingSwitch.setOn(false, animated: false)
    
        textFieldRandomColor.isUserInteractionEnabled = editingSwitch.isOn
        
        textFieldEmoji.delegate = emojiTextFieldDelegate
        textFieldColor.delegate = colorTextFieldDelegate
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return editingSwitch.isOn
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }

    
    @IBAction func toggleTextEditor(_ sender: Any) {
        if !(sender as! UISwitch).isOn {
            textFieldRandomColor.resignFirstResponder()
        }
        textFieldRandomColor.isUserInteractionEnabled = editingSwitch.isOn

    }

}

