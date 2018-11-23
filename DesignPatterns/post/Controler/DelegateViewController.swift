//
//  DelegateViewController.swift
//  DesignPatterns
//
//  Created by sbyka on 22/11/18.
//  Copyright © 2018 sbyka. All rights reserved.
//

import UIKit


protocol MyTextUpdaterProtocal {
    func updateText(resultString: String)
}



class DelegateViewController: UIViewController {

    var delegate : MyTextUpdaterProtocal? = nil
    
    @IBOutlet var inputTextField: UIView!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension DelegateViewController: UITextFieldDelegate {
   
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        delegate?.updateText(resultString: textField.text!)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let resultStr : String = textField.text! + string
        delegate?.updateText(resultString: resultStr)
        return true
    }
    
}

