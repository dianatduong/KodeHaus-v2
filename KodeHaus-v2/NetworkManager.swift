//
//  NetworkManager.swift
//  KodeHaus-v2
//
//  Created by Diana Duong on 8/22/24.
//

import SwiftUI

struct GitHubUser: Codable {
    let name: String?
    let bio: String?
    let avatarUrl: String?
    let publicRepos: Int?
}

@Observable
class NetworkManager{
    var user: GitHubUser?
    //making api request with URL
    func fetchUser() async throws {
        //unwrapping url to get the url
        guard let url = URL(string: "https://api.github.com/users/dianatduong") else {
            print("url didn't exist")
            return
        }
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            if let httpResponse = response as? HTTPURLResponse {
                switch httpResponse.statusCode {
                   case 200:
                       user = try decoder.decode(GitHubUser.self, from: data)
                   case 404:
                       print("User not found")
                   case 403:
                       print("API rate limit exceeded")
                   default:
                       print("Received HTTP \(httpResponse.statusCode)")
                   }
            }
        } catch {
            //Catching errors and throwing them
            print("Error fetching user: \(error.localizedDescription)")
            
            throw error
        }
    }
}


#Preview {
    MyProfileView(nm: NetworkManager())
}
