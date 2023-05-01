//
//  ContentView.swift
//  HelloSwiftUiwithnocore
//
//  Created by Eman on 06/02/2023.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    @State private var testStat = ""
var landmark : Landmark
    var body: some View {
        ScrollView{
            VStack{
                MapView(coordinate: landmark.locationCoordinates)
                    .edgesIgnoringSafeArea(.top)
                ImageView(img:landmark.imageName)
                    .offset(y:-150)
                    .padding(.bottom , -150)
                VStack(alignment: .leading) {
                    //  Map()
                    //   ImageView()
                    //      .offset(y:-150)
                    //   .padding(.bottom , -150)
                    //            Image(systemName: "globe")
                    //                .imageScale(.large)
                    //                .foregroundColor(.accentColor)
                    Text("Park")
                        .font(.largeTitle)
                        .padding()
                    HStack{
                        Text(landmark.park)
                        //                    .font(.largeTitle)
                        //                    .padding()
                        Spacer()
                        Text(landmark.name)
                        //                    .font(.largeTitle)
                        //                    .padding()
                        
                    }.font(.title)
                        .padding()
                    Divider()
                    //                Text("new group of text here")
                    //                Text (testStat)
                    //                TextField("",text: $testStat)
                    //                Text(landmark.description)
                    //                    .padding()
                    Text("About \(landmark.name)")
                    Text(landmark.description)
                }
                //h3ml spacer 3shan by default ay stack byb2a f l center f na atl3o fo2 b spacer
                Spacer()
                
                //.padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(landmark: landmarks[0])
    }
}
