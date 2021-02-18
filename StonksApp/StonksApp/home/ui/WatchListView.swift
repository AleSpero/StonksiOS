//
//  WatchListView.swift
//  StonksApp
//
//  Created by Alessandro Sperotti on 14/02/21.
//

import Foundation
import SwiftUI

struct WatchlistView : View{
    
    //TODO add viewModel @ObservedView
    
    var body: some View{
        VStack(alignment: .leading, spacing: 4, content: {
            Text("My Watchlist")
                .font(.title2)
                .foregroundColor(Theme.Colors.text)
                .bold()
                .padding(8)
        })
    }
}

struct WatchlistView_Preview: PreviewProvider {
    static var previews: some View {
        WatchlistView()
            .frame(maxHeight: 400)
    }
}
