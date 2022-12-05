//
//  MovieRowView.swift
//  MoviesSwiftUITask
//
//  Created by User on 04/12/2022.
//

import SwiftUI
import SDWebImageSwiftUI

struct MovieRowView: View {
    var movie: JawSummary
    
    var body: some View {
        HStack {
            WebImage(url: URL(string: movie.logoImage?.url ?? ""))
                .placeholder {
                    ProgressView()
                }
                .frame(width: 50, height: 50, alignment: .center)
                .cornerRadius(8)
            Text(movie.title ?? "test")
            Spacer()
        }
    }
}

struct MovieRowView_Previews: PreviewProvider {
    static var previews: some View {
        MovieRowView(movie: JawSummary.createSampleObject())
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
