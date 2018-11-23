//
//  ViewController.swift
//  DesignPatterns
//
//  Created by sbyka on 22/11/18.
//  Copyright © 2018 sbyka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextFiled: UITextField!
    @IBOutlet weak var modelView: UIView!
    
    
    @IBAction func validButtonAction(_ sender: Any) {
        let myTableVC = storyboard?.instantiateViewController(withIdentifier: "MyTableViewController") as! MyTableViewController
        self.navigationController?.pushViewController(myTableVC, animated: true)
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let delegateVC = storyboard?.instantiateViewController(withIdentifier: "DelegateViewController") as! DelegateViewController
        
        delegateVC.delegate = self
        
        self.addChildViewController(delegateVC)
        
        delegateVC.view.frame = self.modelView.bounds
        self.modelView.addSubview(delegateVC.view)
        delegateVC.didMove(toParentViewController: self)
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: MyTextUpdaterProtocal {
    func updateText(resultString: String) {
        self.inputTextFiled.text = resultString
    }

    
    
    
}


