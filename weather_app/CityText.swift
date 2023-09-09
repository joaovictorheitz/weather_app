//
//  CityText.swift
//  weather_app
//
//  Created by João Victor de Souza Guedes on 09/09/23.
//

import Foundation
import SwiftUI

struct CityText: View {
    var city: String
    var body: some View {
        Text(city)
            .font(.system(size:32, weight: .medium, design: .default))
            .foregroundColor(Color.white)
            .padding()
    }
}
