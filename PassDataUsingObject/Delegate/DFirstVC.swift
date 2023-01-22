//
//  ViewController.swift
//  DataPassFromFirstToSecondVC
//
//  Created by Sunil Developer on 16/01/23.
//

import UIKit

class DFirstVC: UIViewController, DataPass {
    
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
  
    @IBAction func onClickAddbtn(_ sender: Any) {
        let vc = UIStoryboard(name: "Delegate", bundle: nil).instantiateViewController(withIdentifier: "DSecondVC") as! DSecondVC
        vc.featchDataDelegate = self
        navigationController?.pushViewController(vc, animated: true)
    }
    func featchData(name: String, address: String) {
        lblName.text = "Name: \(name)"
        lblAddress.text = "Address: \(address)"
    }
    
    
}

