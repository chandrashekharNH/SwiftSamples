//
//  ViewController.swift
//  SemaphoreVCDispatchGroup
//
//  Created by CS.. on 22/06/22.
//

import UIKit

/*
 
 Codable was introduced in Swift 4 which helps you convert your JSON to your model and model back to a JSON object
 
 */


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dispatchGroupSamples()
        dispatchSemaphoreSamples()
        
    }
    
    func dispatchGroupSamples() {
        let dispatchGroup = DispatchGroup()
        
        //Notify group of asyc calls are done
        dispatchGroup.enter()
        fetchImage{(_,_) in
            print("Image 1 Download finished")
            dispatchGroup.leave()
        }
        
        dispatchGroup.enter()
        fetchImage{(_,_) in
            print("Image 2 Download finished")
            dispatchGroup.leave()
        }
        
        dispatchGroup.enter()
        fetchImage{(_,_) in
            print("Image 3 Download finished")
             dispatchGroup.leave()
        }
            
        dispatchGroup.notify(queue:.main){
            print("Image Download finished")
        }
    }
    
    
    func dispatchSemaphoreSamples() {
       let semaphore = DispatchSemaphore(value: 0)
       let dispatcgQue = DispatchQueue.global(qos: .background)
       
       dispatcgQue.async {
            self.fetchImage{(_,_) in
               print("semaphore Sample :Image 1 Download finished")
                semaphore.signal()
            }
           semaphore.wait()
           self.fetchImage{(_,_) in
               print("semaphore Sample :Image 2 Download finished")
               semaphore.signal()
           }
           self.fetchImage{(_,_) in
               print("semaphore Sample :Image 3 Download finished")
               semaphore.signal()
           }
       }
            print("semaphore Sample Image Download finished")
   }
    
    
    func fetchImage(completion:@escaping(UIImage?,Error? )->()){
        guard let url = URL(string:"http://date.jsontest.com") else { return }
                URLSession.shared.dataTask(with: url) { (data, rep, err) in
                    
//                    let jsonDecoder = JSONDecoder.init()
//                    if let data = movieData {
//                        let cs = try jsonDecoder.decode(CS.self, from: data)
//                        print(cs)
//                    }
                    
                    completion(UIImage(data: data ?? Data()),nil)
                }.resume()
    }
}


struct CS: Decodable {
    let date: Int
    let milliseconds_since_epoch: Int
    let time: Int

    
    enum CodingKeys: String, CodingKey {
        case date
        case milliseconds_since_epoch
        case time
    }
}


     
    
    
