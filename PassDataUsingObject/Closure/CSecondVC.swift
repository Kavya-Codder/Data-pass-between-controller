//
//  SecondVC.swift
//  PassDataUsingSingleton
//
//  Created by Sunil Developer on 17/01/23.
//

import UIKit

class CSecondVC: UIViewController {
    
    
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblMobile: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func onClickAddBtn(_ sender: Any) {
        let vc = UIStoryboard(name: "Closure", bundle: nil).instantiateViewController(withIdentifier: "CFirstVC")as! CFirstVC
        navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func onClickBtn(_ sender: Any) {
        let vc = UIStoryboard(name: "Closure", bundle: nil).instantiateViewController(withIdentifier: "CFirstVC")as! CFirstVC
        vc.completion = { dict in
            self.lblName.text = "Name: \(dict["name"] ?? "")"
            self.lblAge.text = "Age: \(dict["age"] ?? "")"
            self.lblMobile.text = "Mobile No: \(dict["mobile"] ?? "")"
            self.lblAddress.text = "Address: \(dict["address"] ?? "")"

        }
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
