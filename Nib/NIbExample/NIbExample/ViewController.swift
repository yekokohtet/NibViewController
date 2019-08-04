//
//  ViewController.swift
//  NIbExample
//
//  Created by Ye Ko Ko Htet on 04/08/2019.
//  Copyright © 2019 Ye Ko Ko Htet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
//        let myVC = MyViewController(nibName: "MyViewController", bundle: nil)
        let vc = NibViewController(nibName: NibViewController.identifier, bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }
    
}

