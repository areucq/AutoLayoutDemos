//
//  ViewController.swift
//  ProgramConstraints
//
//  Created by Qi Cui on 6/19/17.
//  Copyright © 2017 Qi Cui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tbView: UITableView!
    var contentEmptyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addContentEmptyLabel()
    }

    fileprivate func addContentEmptyLabel() {
        contentEmptyLabel = UILabel()
        contentEmptyLabel.translatesAutoresizingMaskIntoConstraints = false
        contentEmptyLabel.numberOfLines = 2
        contentEmptyLabel.textAlignment = .center
        contentEmptyLabel.textColor = UIColor.black
        contentEmptyLabel.font = UIFont.systemFont(ofSize: 17)
        
        contentEmptyLabel.text = "You have no requests and friends so far"
        
        self.view.addSubview(contentEmptyLabel)
        
        let leftMargin = NSLayoutConstraint(item: contentEmptyLabel, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 70)
        let rightMargin = NSLayoutConstraint(item: contentEmptyLabel, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -70)
        let verticalConstraint = NSLayoutConstraint(item: contentEmptyLabel, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY , multiplier: 1.0, constant: 0)
        
        self.view.addConstraints([leftMargin, rightMargin, verticalConstraint])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

