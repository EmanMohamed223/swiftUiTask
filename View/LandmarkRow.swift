//
//  LandmarkRow.swift
//  HelloSwiftUiwithnocore
//
//  Created by Eman on 07/02/2023.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark : Landmark
    var body: some View {
        HStack{
            landmark .image
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
            Text(landmark.name).font(.largeTitle)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }.previewLayout(.fixed(width: UIScreen.main.bounds.size.width, height: 70))
    }
}
