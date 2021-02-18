//
//  AppView.swift
//  StonksApp
//
//  Created by Alessandro Sperotti on 05/02/21.
//

import Foundation
import SwiftUI

struct AppView : View{
    var body: some View{
        NavigationView{
            TabView{
                HomeView()
                   .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                   .tabItem {
                       Image(systemName: "house.fill")
                       Text("Home")
                   }
                LibraryView()
                    .tabItem{
                        Image(systemName: "book.fill")
                        Text("Library")
                    }
            }.onAppear(perform: {
                UITabBar.appearance().isTranslucent = false
                UITabBar.appearance().barTintColor = .white
            }).accentColor(Color("red500"))
            .toolbar(content: {
                    ToolbarItem(placement: .navigationBarLeading, content: {
                        HStack(alignment: .center, spacing: 12, content: {
                            Image("logo")
                                .resizable()
                                .frame(width: 40, height: 25, alignment: .center)
                            Text("Stonks")
                                .font(.title)
                                .bold()
                        })
                    })
                })
        }.background(Theme.Colors.background)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
