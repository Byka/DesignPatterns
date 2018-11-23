//
//  MyTableViewCell.swift
//  DesignPatterns
//
//  Created by sbyka on 23/11/18.
//  Copyright © 2018 sbyka. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    func configure(withPost post: Post) {
        
        self.titleLabel.text = post.title
        self.descriptionTextView.text = post.body
        
    }
   
}
