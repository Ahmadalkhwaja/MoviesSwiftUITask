//
//  MoviesDetailsView.swift
//  MoviesSwiftUITask
//
//  Created by User on 04/12/2022.
//

import SwiftUI
import SDWebImageSwiftUI

struct MoviesDetailsView: View {
    @State private var rating = 0.0
    @State private var image: UIImage?
    var movie: JawSummary
    var body: some View {
        VStack {
            if let image = image {
                Image(uiImage: image)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.white, lineWidth: 4)
                    }
                    .shadow(radius: 7)
            } else {
                ProgressView()
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.gray, lineWidth: 4)
                    }
                    .shadow(radius: 7)
            }
            RatingView($rating)
                .font(.system(size: 32, weight: .bold))
                .foregroundColor(.yellow)
                .padding()
            VStack(alignment: .leading) {
                HStack {
                    Text(movie.title ?? "")
                        .font(.title)
                    Spacer()
                    Image(systemName:  rating > 2 ? "heart.fill" : "heart")
                        .foregroundColor(.red)
                }
                HStack {
                    Text(movie.synopsis ?? "")
                }
            }
            .padding()
            Spacer()
        }
        .task {
            do {
                image = try await fetchImage(url: movie.logoImage?.url ?? "")
            } catch {
                print(error)
            }
        }
        
    }
    func fetchImage(url: String) async throws -> UIImage {
        guard let imageURL = URL(string: url) else { return UIImage() }
        let (data, _) = try await URLSession.shared.data(from: imageURL, delegate: nil)
        return UIImage(data: data) ?? UIImage()
    }
}

struct MoviesDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesDetailsView(movie: JawSummary.createSampleObject())
    }
}
