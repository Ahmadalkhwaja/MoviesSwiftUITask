//
//  MoviesObserver.swift
//  MoviesSwiftUITask
//
//  Created by User on 04/12/2022.
//

import Foundation
import Combine

@MainActor class MoviesObserver: ObservableObject {
    @Published var moviesList = [JawSummary]()
    
    init() {
        Task {
            await getMovies()
        }
    }
    
    func getMovies() async {
        moviesList = await APIClient.getMovies().titles?.map({$0.jawSummary ?? JawSummary.createSampleObject()}) ?? []
    }
}
