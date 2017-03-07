//
//  FISGithubRepository.swift
//  github-repo-list-swift
//
//  Created by susan lovaglio on 10/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class GithubRepository {

  var fullName: String
  var htmlURL: URL
  var repositoryID: String

  init(dictionary: [String:Any]) {
    self.fullName = dictionary["full_name"] as? String ?? ""
    let urlString =  dictionary["html_url"] as? String ?? "https://nope.com"
    self.htmlURL = URL(string: urlString)!
    let id = dictionary["id"] as? Int ?? 0
    self.repositoryID = String(id)
  }
    
}
