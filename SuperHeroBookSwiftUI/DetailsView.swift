//
//  DetailsView.swift
//  SuperHeroBookSwiftUI
//
//  Created by Tiga  on 27.04.2023.
//

import SwiftUI

struct DetailsView: View {
    var choosenHero : SuperHero
    var body: some View {
        
            VStack{
                
                MapView(coordinate: choosenHero.coordinateLocation)
                    .frame(height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                    .edgesIgnoringSafeArea(.all)
                
                ImageView(image: Image(choosenHero.imageName))
                    .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                    .offset(y: UIScreen.main.bounds.width * -0.4)
                
                
                VStack{
                    VStack{
                        Text(choosenHero.name)
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                        
                        Spacer()
                        
                        Text(choosenHero.realName)
                            .font(.title)
                            .foregroundColor(.orange)
                    }
                    Spacer()
                    HStack{
                        Text("City: " + choosenHero.city)
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                        Text("Job: " + choosenHero.job)
                            .font(.headline)
                            .foregroundColor(.black)
                    }
                    Spacer()
                    Text(choosenHero.name + " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text. ")
                        .offset(y: 50)
                    
                    
                        
                }.padding()
                    .offset( y: UIScreen.main.bounds.height * -0.2)
                Spacer()
            
            
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(choosenHero: superman
        )
    }
}
