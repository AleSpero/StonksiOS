//
//  PortfolioView.swift
//  StonksApp
//
//  Created by Alessandro Sperotti on 12/02/21.
//

import Foundation
import SwiftUI

struct PortfolioView: View {
    
    //TODO ViewModel @ObservedObject
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            Text("My Portfolio")
                .font(.title2)
                .bold()
                .padding(8)
            
            Card(elevation: 6, cornerRadius: 12, alignment: Alignment(horizontal: .leading, vertical: .top), content: {
                VStack(alignment: .leading, spacing: 4, content: {
                    //add icon here?
                    HStack {
                        Text("16.240€")
                            .font(Font.system(size: 40))
                            .bold()
                        Spacer()
                        Image(systemName: "eye.slash.fill")
                            .resizable()
                            .frame(width: 28, height: 20)
                            .padding(.trailing, 6)
                        //pick a Black più morbido
                    }
                        last24Hours()
                    last7Days()
                }).padding()
            })
            .padding()
        })
    }
    
    func last24Hours() -> some View{
        return Text("+24.3%")
            .foregroundColor(.green)
            .bold()
        +
        Text(" (3.195€)")
        +
        Text(" last 24 hours")
            .font(.footnote)
            .fontWeight(.light)
    }
    
    func last7Days() -> some View{
        return Text("-5.3%")
            .foregroundColor(.red)
            .bold()
        +
        Text(" (-847€)")
            .font(.subheadline)
        +
        Text(" last 7 days")
            .font(.footnote)
            .fontWeight(.light)
    }
}

struct PortfolioView_Preview: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .frame(maxHeight: 400)
    }
}
