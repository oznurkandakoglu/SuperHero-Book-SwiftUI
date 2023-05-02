

import Foundation
import SwiftUI
import CoreLocation

struct SuperHero: Identifiable{
    
    var id = UUID()
    var name : String
    var realName : String
    var imageName : String
    var city : String
    var job : String
    var coordinate : Coordinate
    
    var coordinateLocation : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
    }
}

struct Coordinate {
    var latitude : Double
    var longitude: Double
}

let batman = SuperHero(name: "Batman", realName: "Bruce Wayne", imageName: "batman", city: "Gothman", job: "İş Adamı",
                       coordinate: Coordinate(latitude: 41.8713679, longitude: -87.7669902))

let superman = SuperHero(name: "Superman", realName: "Clark Kent", imageName: "superman", city: "Kansas", job: "Gazeteci",
                         coordinate: Coordinate(latitude: 39.08, longitude: -94.70))
let spiderman = SuperHero(name: "Spiderman", realName: "Peter Parker", imageName: "spiderman", city: "New York", job: "Fotoğrafçı",
                          coordinate: Coordinate(latitude: 39.08, longitude: -94.70))

let ironman = SuperHero(name: "Ironman", realName: "Tony Stark", imageName: "ironman", city: "Los Angeles", job: "İş Adamı",
                        coordinate: Coordinate(latitude: 39.08, longitude: -94.70))

let superHeroArray = [batman, superman, spiderman, ironman]
