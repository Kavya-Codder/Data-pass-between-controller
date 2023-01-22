//
//  SecondVC.swift
//  PassdataUsingSegues
//
//  Created by Sunil Developer on 17/01/23.
//

import UIKit

class SSecondVC: UIViewController {
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    var name: String?
    var address: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text = "Name:  \(name ?? "")"
        lblAddress.text = "Address:  \(address ?? "")"
    }
    

    @IBAction func onClickBackBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
