//
//  ImageView.swift
//  SuperHeroBookSwiftUI
//
//  Created by Tiga  on 27.04.2023.
//

import SwiftUI

struct ImageView: View {
    var image : Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 3)).shadow(radius: 10)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: Image("batman"))
    }
}
