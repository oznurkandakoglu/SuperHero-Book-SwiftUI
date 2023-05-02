//
//  ListRowView.swift
//  SuperHeroBookSwiftUI
//
//  Created by Tiga  on 27.04.2023.
//

import SwiftUI

struct ListRowView: View {
    var superHero : SuperHero
    var body: some View {
        HStack{
            Image(superHero.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 50, alignment: .leading)
                .clipShape(Circle())
           Spacer()
            VStack{
                Text(superHero.name).font(.title).bold()
                Text(superHero.realName)
            }
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(superHero: batman)
    }
}
