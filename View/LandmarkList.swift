//
//  LandmarkList.swift
//  HelloSwiftUiwithnocore
//
//  Created by Eman on 07/02/2023.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarks){ landmark in
                NavigationLink(destination: ContentView(landmark: landmark), label: {
                    LandmarkRow(landmark: landmark)
                })
            }.navigationBarTitle("Park")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
