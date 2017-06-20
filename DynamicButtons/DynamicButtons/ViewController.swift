//
//  ViewController.swift
//  DynamicButtons
//
//  Created by Qi Cui on 6/19/17.
//  Copyright © 2017 Qi Cui. All rights reserved.
//

import UIKit

enum PurchasedState {
    case unpurchased
    case purchased
}

class ViewController: UIViewController {

    @IBOutlet weak var firstBt: UIButton!
    @IBOutlet weak var secondBt: UIButton!
    @IBOutlet weak var thirdBt: UIButton!
    
    @IBOutlet var secondBtToSuperViewTrailingConstraint: NSLayoutConstraint!

    @IBOutlet weak var toggleBt: UIButton!
    
    var stateOfPurchase: PurchasedState = .unpurchased {
        didSet {
            updateBtApperances()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toggleBt.addTarget(self, action: #selector(ViewController.toggleBtsState(sender:)), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        updateBtApperances()
    }
    
    func toggleBtsState(sender: Any) {
        stateOfPurchase = stateOfPurchase == .purchased ? .unpurchased : .purchased
    }
    
    func updateBtApperances() {
        switch stateOfPurchase {
        case .purchased:
            secondBtToSuperViewTrailingConstraint.isActive = false
            
            firstBt.setTitle("Watch", for: .normal)
            secondBt.setTitle("Trailer", for: .normal)
            thirdBt.setTitle("Info", for: .normal)
            
        default:
            secondBtToSuperViewTrailingConstraint.isActive = true
            
            firstBt.setTitle("Buy", for: .normal)
            secondBt.setTitle("Trailer", for: .normal)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

