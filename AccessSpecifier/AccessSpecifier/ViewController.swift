//
//  ViewController.swift
//  AccessSpecifier
//
//  Created by CS.. on 15/07/22.
//

import UIKit

class ViewController: UIViewController {
  private  var hiddenTax = 200
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
    open  func calculateTax(ForAmmout: Int )-> Int {
        return ForAmmout + hiddenTax
    }
}


class C {
    let vc = ViewController()
    let a = vc.calculateTax(ForAmmout: 100)
}

