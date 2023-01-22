//
//  SecondVC.swift
//  PassDataUsingObject
//
//  Created by Sunil Developer on 17/01/23.
//

import UIKit

class ISecondVC: UIViewController {
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    
    var name: String?
    var age: String?
    var addres: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        featchData()
        
    }
    
    func featchData() {
        lblName.text = name
        lblAge.text = age
        lblAddress.text = addres
    }

    @IBAction func onClickBackBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
