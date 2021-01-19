//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Hiroshi.Nakai on 2021/01/18.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {

        NavigationView {
            
            List(landmarks) { landmark in
                
                NavigationLink(
                    destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
//        LandmarkList()
//            .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
