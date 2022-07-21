//
//  ViewController.swift
//  KVCandKVO
//
//  Created by CS.. on 25/06/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    let fri =  Friend(name: "Ram")
        print(fri.name)
        

        //Key value Coding
        let name = fri.value(forKey: "name")
        print(name as Any)

        
        //Key value observer
        _ =  fri.observe(\.name, options: [.old,.new]) { fri, value in
            print(value.oldValue as Any)
            print(value.newValue as Any)
        }

        fri.name = "XXX"
    }
}


class Friend:NSObject {
    @objc dynamic var name:String
    init(name:String){
        self.name = name
    }
}

