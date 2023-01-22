//
//  ViewController.swift
//  PassDataUsingSingleton
//
//  Created by Sunil Developer on 17/01/23.
//

import UIKit

class CFirstVC: UIViewController {
    
    typealias completionHendler = ([String:Any]) -> Void

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    @IBOutlet weak var txtMobile: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    var completion: completionHendler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickAddBtn(_ sender: Any) {
        
    }
    
    @IBAction func onClickSubmitBtn(_ sender: Any) {
        guard let name = txtName.text else { return }
        guard let age = txtAge.text  else { return }
        guard let mobile = txtMobile.text else { return }
        guard let address = txtAddress.text else { return }
        let dict = ["name": name, "age": age, "mobile": mobile, "address": address]
        guard let completionBlock = completion else {
            return
        }
        completionBlock(dict)
        self.navigationController?.popViewController(animated: true)
    }
    
}

