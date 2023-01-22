//
//  ViewController.swift
//  PassDataUsingObject
//
//  Created by Sunil Developer on 17/01/23.
//

import UIKit

class IViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    
    @IBOutlet weak var txtAddress: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickBtn(_ sender: Any) {
        let secondVC = UIStoryboard(name: "Instance", bundle: nil).instantiateViewController(withIdentifier: "ISecondVC") as! ISecondVC
        secondVC.name = txtName.text
        secondVC.age = txtAge.text
        secondVC.addres = txtAddress.text
        navigationController?.pushViewController(secondVC, animated: true)
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        txtName.text = ""
        txtAge.text = ""
        txtAddress.text = ""
    }
}

