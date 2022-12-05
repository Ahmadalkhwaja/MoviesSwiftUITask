//
//  APIClient.swift
//  MoviesSwiftUITask
//
//  Created by User on 04/12/2022.
//

import Foundation
import Alamofire

class APIClient {
    class func getMovies() async -> MoviesModel {
        return await withCheckedContinuation { continuation in
            AF.request(Constants.getMoviesEndpoint, method: .get, headers: Constants.headers).responseData { response in
                switch response.result {
                case .success(let data):
                    do {
                        let model = try JSONDecoder().decode(MoviesModel.self, from: data)
                        continuation.resume(returning: model)
                    } catch let jsonErr {
                        print("Failed to decode json:", jsonErr)
                    }
                case .failure(let error):
                    print(error.errorDescription ?? "")
                }
            }.cURLDescription { cURL in
                print(cURL)
            }
        }
    }
}
