//
//  SecondVC.swift
//  DataPassFromFirstToSecondVC
//
//  Created by Sunil Developer on 16/01/23.
//

import UIKit

protocol DataPass {
    func featchData(name: String, address: String)
}

class DSecondVC: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txtAddress: UITextField!
    
    @IBOutlet weak var btnSave: UIButton!
    
    var featchDataDelegate: DataPass!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onClickSaveBtn(_ sender: Any) {
        self.featchDataDelegate?.featchData(name: txtName.text ?? "", address: txtAddress.text ?? "")
        navigationController?.popViewController(animated: false)
    }
    
    
}
