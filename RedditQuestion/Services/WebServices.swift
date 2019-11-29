//
//  WebServices.swift
//  RedditQuestion
//
//  Created by Jhuo Yu cheng on 2019/11/28.
//  Copyright © 2019 Jhuo Yu cheng. All rights reserved.
//

import UIKit

class WebServices: IWebServicesInterface {
    func getHotData(after: String, before: String, completion: @escaping (Result<HotData?, ErrorResult>) -> Void) {
        guard let url = URL(string: "https://www.reddit.com/hot.json?&after=\(after)&before=\(before)") else {
            completion(.failure(.network(string: "Wrong url format")))
            return
        }
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                completion(.failure(.network(string: "An error occured during request :" + error.localizedDescription)))
            } else if let data = data {
                do {
                    let result = try JSONDecoder().decode(Hot.self, from: data).data
                    completion(.success(result))
                } catch {
                    print(error)
                    completion(.failure(.parser(string: error.localizedDescription)))
                }
            }
        }.resume()
    }
}
