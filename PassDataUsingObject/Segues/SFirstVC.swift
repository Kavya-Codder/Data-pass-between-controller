//
//  ViewController.swift
//  PassdataUsingSegues
//
//  Created by Sunil Developer on 17/01/23.
//

import UIKit

class Abc {
    var id: Any?
    
}

class SFirstVC: UIViewController {
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txtAddress: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func onClickSubmitBtn(_ sender: Any) {
        self.performSegue(withIdentifier: "secondVC", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        
        var obj = Abc()
        obj.id = 5
        if let id = obj.id as? Int{
             
        }
        if segue.identifier == "secondVC" {
            if let vc = segue.destination as? SSecondVC {
                vc.name = txtName.text
                vc.address = txtAddress.text 
            }
        }
    }
}

