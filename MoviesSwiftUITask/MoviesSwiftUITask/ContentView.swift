//
//  ContentView.swift
//  MoviesSwiftUITask
//
//  Created by User on 04/12/2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var moviesObserver = MoviesObserver()
    
    var body: some View {
        NavigationView{
            List(moviesObserver.moviesList, id: \.id){ item in
                NavigationLink {
                    MoviesDetailsView(movie: item)
                } label: {
                    MovieRowView(movie: item)
                }
            }
            .navigationBarTitle("SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
