//
//  ListView.swift
//  SuperHeroBookSwiftUI
//
//  Created by Tiga  on 27.04.2023.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView{
            List(superHeroArray) { eleman in
                NavigationLink {
                    DetailsView(choosenHero: eleman)
                } label: {
                    ListRowView(superHero: eleman)
                }.navigationTitle(Text("Super Hero Book"))

            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
