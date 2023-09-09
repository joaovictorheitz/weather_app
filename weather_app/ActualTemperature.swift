//
//  ActualTemperature.swift
//  weather_app
//
//  Created by João Victor de Souza Guedes on 09/09/23.
//

import Foundation
import SwiftUI

struct ActualTemperature: View {
    var temperature: Double
    var image: String {
        if temperature <= 0 {
            return "cloud.snow.fill"
        } else if temperature <= 14 {
            return "cloud.bolt.rain.fill"
        } else if temperature <= 22 {
            return "cloud.sun.fill"
        } else {
            return "sun.max.fill"
        }
    }
    var body: some View {
        VStack {
            Image(systemName: "cloud.sun.fill").renderingMode(.original).resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("32ºC")
                .font(.system(size: 48))
                .fontWeight(.medium)
                .foregroundColor(Color.white)
            
        }
    }
}
