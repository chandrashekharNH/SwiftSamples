//
//  CSApiRequest.swift
//  ClosureSamples
//
//  Created by CS.. on 05/07/22.
//

import Foundation


class CSApiRequest {
    static var shared = CSApiRequest()
    func getInfo(url:URL ,completion: @escaping (Result<Data,Error>) ->Void){
        let dataTask = URLSession.shared.dataTask(with: url) { Data, response, error in
            guard let Data = Data , error == nil else {
                return
            }
            completion(.success(Data))
        }
        dataTask.resume()
    }
    
}
