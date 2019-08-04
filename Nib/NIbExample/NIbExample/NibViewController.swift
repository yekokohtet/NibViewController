//
//  NibViewController.swift
//  NIbExample
//
//  Created by Ye Ko Ko Htet on 04/08/2019.
//  Copyright © 2019 Ye Ko Ko Htet. All rights reserved.
//

import UIKit

class NibViewController: UIViewController {
    
    static let identifier = "NibViewController"

    @IBOutlet weak var viewBackground: UIView!
    @IBOutlet weak var tfFirst: UITextField!
    @IBOutlet weak var tfSecond: UITextField!
    @IBOutlet weak var tfThird: UITextField!
    @IBOutlet weak var tfFourth: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tfFirst.delegate = self
        tfSecond.delegate = self
        tfThird.delegate = self
        tfFourth.delegate = self
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(onDismissKeyboard))
        view.addGestureRecognizer(tapGestureRecognizer)
        
    }
    
    @objc func onDismissKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func btnButton(_ sender: Any) {
        let vc = SecondNIbViewController(nibName: SecondNIbViewController.identifier, bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }
    
}

extension NibViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
