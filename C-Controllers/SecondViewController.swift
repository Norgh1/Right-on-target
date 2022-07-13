//
//  SecondViewController.swift
//  Right on target
//
//  Created by Nor Gh on 7/13/22.
//

import UIKit

class SecondViewController : UIViewController {
    
    
    
    override func loadView() {
        super.loadView()
        print("Scond loadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Scond viewDidLoad")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Scond viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Scond viewDidAppear")
    }
    

    
}
