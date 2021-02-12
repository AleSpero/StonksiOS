//
//  HomeView.swift
//  StonksApp
//
//  Created by Alessandro Sperotti on 05/02/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        GeometryReader{ geometry in
            VStack(alignment: .center, spacing: nil, content: {
                PortfolioView()
                    .frame(maxHeight: 200) //TODO: wrap content in some way?
                //start to create colors for night/light mode

            })
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

