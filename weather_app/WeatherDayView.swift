//
//  WeatherDayView.swift
//  weather_app
//
//  Created by João Victor de Souza Guedes on 09/09/23.
//

import Foundation
import SwiftUI

struct WeatherDayView: View {
    var weekday: String
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
            Text(weekday)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(Color.white)
            
            Image(systemName: image).renderingMode(.original).resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text(String(format: "%.0fºC", temperature))
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(Color.white)
        }
    }
}
