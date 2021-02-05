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
                LibraryView()
                    .tabItem{
                        Image(systemName: "home")
                        Text("Library")
                    }
             HomeView()
                .tabItem {
                    Image(systemName: "home")
                    Text("Home")
                }
            }.toolbar(content: {
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
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
