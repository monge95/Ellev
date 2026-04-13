//
//  CustomMap.swift
//  ellev
//
//  Created by JOAO CLAUDIO DOS SANTOS SOUZA on 13/04/26.
//

import SwiftUI
import MapKit

struct CustomMap: View {
    
    @State private var cameraPosition: MapCameraPosition = .userLocation(fallback: .automatic)
    let locationManager = CLLocationManager()
    
    let direction = [
        "departure": "",
        "arrival": ""
    ]
    
    var body: some View {
        Map(position: $cameraPosition) {
            Annotation("Aeroporto de Congonhas", coordinate: .congonhasAirport, anchor: .bottom) {
                Image(.beijaflorBranco)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(.fundodeTelas)
                    .frame(width: 20, height: 20)
                    .padding(7)
                    .background(.button.gradient, in: .circle)
                    .contextMenu {
                        Button("Selecionar como local de partida", systemImage: "location.north.fill") {
                            
                        }
                    }
            }
            
            Annotation("Edifício Dacon", coordinate: .daconBuilding, anchor: .bottom) {
                Image(.beijaflorBranco)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(.fundodeTelas)
                    .frame(width: 20, height: 20)
                    .padding(7)
                    .background(.button.gradient, in: .circle)
                    .contextMenu {
                        Button("Selecionar como local de partida", systemImage: "location.north.fill") {
                            
                        }
//                        if direction["departure"] == "" {
//                            
//                        } else {
//                            Button("Selecionar como local de chegada", systemImage: "flag.pattern.checkered") {
//                                
//                            }
//                        }
                    }
            }
            
            UserAnnotation()
        }
        .frame(maxWidth: .infinity, minHeight: 300)
        .cornerRadius(10)
        .tint(.button)
        .onAppear {
            locationManager.requestWhenInUseAuthorization()
            
            if let userCoord = locationManager.location?.coordinate {
                let region = MKCoordinateRegion(
                    center: userCoord,
                    latitudinalMeters: 15000,
                    longitudinalMeters: 15000
                )
                cameraPosition = .region(region)
            }
        }
        .mapControls {
            MapUserLocationButton()
            MapCompass()
            MapPitchToggle()
            MapScaleView()
        }
    }
}

extension CLLocationCoordinate2D {
    static let congonhasAirport = CLLocationCoordinate2D(latitude: -23.62583333, longitude: -46.65638889)
    static let daconBuilding = CLLocationCoordinate2D(latitude: -23.58055556, longitude: -46.68388889)
}

#Preview {
    CustomMap()
}
