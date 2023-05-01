//
//  Map.swift
//  HelloSwiftUiwithnocore
//
//  Created by Eman on 06/02/2023.
//

import SwiftUI
import MapKit
struct MapUi :UIViewRepresentable
{
    func makeUIView(context: Self.Context) -> MKMapView
    {
        MKMapView(frame: .zero)
    }
    func updateUIView(_ uiView: MKMapView, context: Self.Context)
    {
//        var latitude : Double
//        var longitude : Double
        let coordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
        let span = MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 2)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}
struct Map1: View{
    
    
    var body: some View {
        MapUi().frame(height: 300)
    }
}
struct MapView: View {
    var coordinate: CLLocationCoordinate2D

    @State private var region = MKCoordinateRegion()

    
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }.frame(height: 300)
    }
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}



struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))    }

}
