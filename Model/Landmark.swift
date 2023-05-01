//
//  Landmark.swift
//  HelloSwiftUiwithnocore
//
//  Created by Eman on 07/02/2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark : Identifiable, Codable{
    var id : Int
    var name : String
    var park : String
    var state : String
    var description : String
    var imageName : String
    var image : Image{
        Image(imageName)
    }
    
    var locationCoordinates : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
     var coordinates : Coordinates
    
    struct Coordinates : Codable{
        var longitude : Double
        var latitude : Double
    }
}
