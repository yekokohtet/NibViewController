//
//  SecondNIbViewController.swift
//  NIbExample
//
//  Created by Ye Ko Ko Htet on 04/08/2019.
//  Copyright © 2019 Ye Ko Ko Htet. All rights reserved.
//

import UIKit

class SecondNIbViewController: UIViewController {
    
    static let identifier = "SecondNIbViewController"
    
    @IBOutlet weak var btnBack: UIView!
    @IBOutlet weak var viewSelectedColorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(onClickBack))
        btnBack.isUserInteractionEnabled = true
        btnBack.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func onClickBack() {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnRed(_ sender: Any) {
        viewSelectedColorView.backgroundColor = #colorLiteral(red: 1, green: 0.2368129587, blue: 0.2042227939, alpha: 1)
    }
    
    @IBAction func btnGreen(_ sender: Any) {
        viewSelectedColorView.backgroundColor = #colorLiteral(red: 0.6009031376, green: 1, blue: 0.5035926592, alpha: 1)
    }
    
    @IBAction func btnBlue(_ sender: Any) {
        viewSelectedColorView.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
    }
    
}
