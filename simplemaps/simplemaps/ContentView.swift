//
//  ContentView.swift
//  simplemaps
//
//  Created by AHMAD BARIZIE SIROJUL ILMI on 10/15/20.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -6.6529, longitude: 106.8915), latitudinalMeters: 10000, longitudinalMeters: 10000)
    @State var tracking : MapUserTrackingMode = .follow
    @State var manager = CLLocationManager()
    @StateObject var managerDelegate = locationDelegate()
    
    var body: some View{
        
        VStack{
            
            Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: $tracking, annotationItems: managerDelegate.pins) { pin in
                
                MapPin(coordinate: pin.location.coordinate,tint: .red)
            }
        }
        .onAppear {
            
            manager.delegate = managerDelegate
        }
    }
}
//first with full accuracy

//now when precise location is not turned on....

//location manager delegate

class locationDelegate : NSObject,ObservableObject,CLLocationManagerDelegate{
    
    @Published var pins : [Pin] = []
    //checking authorization status
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        
        //were going to use only in use key only...
        
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse{
            
            print("authorized")
            
            //setting reduced accuracy to false
            
            //and updating locations....
            
            //checking weather precise location is turned on...
            
            if manager.accuracyAuthorization != .fullAccuracy{
                
                print("reduced Accuracy.....")
                
                //requesting temporary accuracy....
                
                manager.requestTemporaryFullAccuracyAuthorization(withPurposeKey: "Location") { (err) in
                    
                    if err != nil{
                        print(err!)
                        return
                    }
                }
            }
            
            manager.startUpdatingLocation()
        }
        else{
            
            print("not authrized")
            //requesting access
            
            manager.requestWhenInUseAuthorization()
        
        }
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        pins.append(Pin(location: locations.last!))
    }
}

//map pins for updates...

struct Pin : Identifiable {
    
    var id = UUID().uuidString
    var location : CLLocation
}

