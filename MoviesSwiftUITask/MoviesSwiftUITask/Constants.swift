//
//  Constants.swift
//  MoviesSwiftUITask
//
//  Created by User on 04/12/2022.
//

import Foundation
import Alamofire

struct Constants {
    static let headers: HTTPHeaders = [
        "X-RapidAPI-Key": "2f5dc3a06cmsh893e64b39591bafp16202djsn4ecd636b6e74",
        "X-RapidAPI-Host": "netflix54.p.rapidapi.com"
    ]
    
    static let getMoviesEndpoint = "https://netflix54.p.rapidapi.com/search/?query=stranger&offset=0&limit_titles=50&limit_suggestions=20"
    static let getMovieDetailsEndpoint = "https://netflix54.p.rapidapi.com/title/details/?ids="
}
