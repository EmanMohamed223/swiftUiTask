//
//  Service.swift
//  HelloSwiftUiwithnocore
//
//  Created by Eman on 07/02/2023.
//

import Foundation
var landmarks : [Landmark] = load("landmarkData.json")

func load<T : Decodable>(_ filename : String) -> T{
    var data : Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't open file \(filename)")
    }
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Couldn't open file \(filename) \(error)")
    }
    do{
        return try JSONDecoder().decode(T.self, from: data)
    }catch{
        fatalError("Couldn't parse file \(filename) \(error)")
    }
}
