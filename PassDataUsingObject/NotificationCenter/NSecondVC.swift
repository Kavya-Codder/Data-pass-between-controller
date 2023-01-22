//
//  NSecondVC.swift
//  PassDataUsingObject
//
//  Created by Sunil Developer on 22/01/23.
//

import UIKit

class NSecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btnFB(_ sender: Any) {
        NotificationCenter.default.post(name: .facebook, object: nil)
    }
    
    @IBAction func btnTwiter(_ sender: Any) {
        NotificationCenter.default.post(name: .twitter, object: nil)
    }
}
