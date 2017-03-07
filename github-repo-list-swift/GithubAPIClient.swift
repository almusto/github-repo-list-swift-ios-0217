//
//  FISGithubAPIClient.swift
//  github-repo-list-swift
//
//  Created by  susan lovaglio on 10/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class GithubAPIClient {

  class func getRepositories(with completion: @escaping ([[String:Any]]) -> ()) {

    let string = "https://api.github.com/repositories?client_id=\(clientID)&client_secret=\(clientSecret)"
    if let url = URL(string: string) {
      let session = URLSession.shared
      let task = session.dataTask(with: url, completionHandler: { (data, response, error) in
        if let unwarppedData = data {

          do {
            let responseJSON = try JSONSerialization.jsonObject(with: unwarppedData, options: []) as? [[String:Any]] ?? []
            completion(responseJSON)
          } catch {
            print(error)
          }
        }
      })

      task.resume()
      
    }

    
  }

  
    
}
    


