//
//  ViewController.swift
//  TextFieldsChallenge
//
//  Created by Nicholas Sutanto on 8/4/17.
//  Copyright © 2017 Nicholas Sutanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldZipCode: UITextField!
    @IBOutlet weak var textFieldDollar: UITextField!
    @IBOutlet weak var textFieldRandomColor: UITextField!
    @IBOutlet weak var editingSwitch: UISwitch!
    
    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    let cashDelegate = CashTextFieldDelegate()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldZipCode.delegate = zipCodeDelegate
        textFieldDollar.delegate = cashDelegate
    }

}

