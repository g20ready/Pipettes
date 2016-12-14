//
//  ViewController.swift
//  Pipettes
//
//  Created by Marsel Tzatzo on 13/12/2016.
//  Copyright © 2016 Marsel Tzatzo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ApiManager.shared.fetchPips { (pips, err) in
            if err != nil {
                print("Error fetching pips : \(err?.localizedDescription)")
                return
            }
            print("Fetched \(pips?.count) pips")
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

