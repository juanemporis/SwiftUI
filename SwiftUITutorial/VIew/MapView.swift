//
//  MapView.swift
//  SwiftUITutorial
//
//  Created by wendy manrique on 1/06/22.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    //Retornara la vista del UIKit
    func makeUIView(context: Context) -> MKMapView{
        
        MKMapView(frame : .zero)
    }
    //Trabajara y acutalizara la vista del UIkit
    func updateUIView(_ uiView: UIViewType, context: Context) {
      
        let coordinate = CLLocationCoordinate2D(latitude: 40.4380638, longitude: -3.7495762)
        
        
        let span =
        MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 2)
        
        let region =
        MKCoordinateRegion(center: coordinate, span: span)
        
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
