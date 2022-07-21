//
//  ViewController.swift
//  ClosureSamples
//
//  Created by CS.. on 05/07/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        guard let url = URL(string:"https://catfact.ninja/fact") else {
            return
        }
        
        CSApiRequest.shared.getInfo(url:url) { result in
            switch result{
            case .success(let data):
                print(data)
            case .failure(let error):
                print(error)
            }
        }
    }
}

