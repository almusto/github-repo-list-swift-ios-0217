//
//  FISReposDataStore.swift
//  github-repo-list-swift
//
//  Created by  susan lovaglio on 10/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ReposDataStore {
    
    static let sharedInstance = ReposDataStore()
  var repositories: [GithubRepository] = []


  func getRepositoriesFromAPI(_ completion: @escaping ()->()) {

    GithubAPIClient.getRepositories { (repos) in

      self.repositories.removeAll()

      for dictionary in repos {
        let repository = GithubRepository(dictionary: dictionary)
        self.repositories.append(repository)

      }

      completion()

    }
  }

}
