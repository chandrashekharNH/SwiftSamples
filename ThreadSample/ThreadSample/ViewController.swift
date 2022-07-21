//
//  ViewController.swift
//  ThreadSample
//
//  Created by CS.. on 25/06/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //serialSyncThreadSample()
        //serialASyncThreadSample()
        conCurrentSyncThreadSample()
        //conCurrentAsyncThreadSample()
    }

    
    func serialSyncThreadSample(){
        print("---- SERIAL -TREAD  Sync -TASK -----")
        let dispatchQueue = DispatchQueue(label: "CS.Serial.Sync")
        dispatchQueue.sync {
            print("TASK 1 starts")
            for index in 1...5{
                print("\(index) task-1 times 10 is \(index*10)")
            }
            print("TASK 1 finished")
        }

        dispatchQueue.sync {
            print("TASK 2 starts")
            print("TASK 2 finished")
        }
    }
    
    func serialAsyncThreadSample(){
        print("---- SERIAL -TREAD  ASync -TASK -----")

        let dispatchQueue = DispatchQueue(label: "CS.Serial.Async")
        dispatchQueue.async {
            print("TASK 1 starts")
            for index in 1...5{
                print("\(index) task-1 times 10 is \(index*10)")
            }
            print("TASK 1 finished")
        }

        dispatchQueue.async {
            print("TASK 2 starts")
            print("TASK 2 finished")
        }
    }
    
    
    func conCurrentSyncThreadSample(){
        print("---- CUNCURRENT -TREAD  Sync -TASK -----")

        let dispatchQueue = DispatchQueue(label: "CS.Serial.Async",attributes: .concurrent)
        dispatchQueue.sync {
            print("TASK 1 starts")
            for index in 1...5{
                print("\(index) task-1 times 10 is \(index*10)")
            }
            print("TASK 1 finished")
        }

        dispatchQueue.async {
            print("TASK 2 starts")
            print("TASK 2 finished")
        }
    }
    
    func conCurrentAsyncThreadSample(){
        print("---- CUNCURRENT -TREAD  Async -TASK -----")

        let dispatchQueue = DispatchQueue(label: "CS.Serial.Async",attributes: .concurrent)
        dispatchQueue.async {
            print("TASK 1 starts")
            for index in 1...5{
                print("\(index) task-1 times 10 is \(index*10)")
            }
            print("TASK 1 finished")
        }

        dispatchQueue.async {
            print("TASK 2 starts")
            print("TASK 2 finished")
        }
    }
}

