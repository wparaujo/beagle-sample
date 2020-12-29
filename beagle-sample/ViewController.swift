//
//  ViewController.swift
//  beagle-sample
//
//  Created by Wesley Araujo on 23/12/20.
//  Copyright © 2020 Wesley Araujo. All rights reserved.
//

import UIKit
import Beagle
import BeagleSchema

class ViewController: UIViewController {
    
    let screen = Screen(child: Text("Teste fldsjfsl;fjsafjksdlk"))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let beagle = Beagle.screen(.declarative(screen))
        beagle.modalPresentationStyle = .fullScreen
        present(beagle, animated: true)
    }


}

