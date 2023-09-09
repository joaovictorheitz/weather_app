//
//  BackgroundView.swift
//  weather_app
//
//  Created by João Victor de Souza Guedes on 09/09/23.
//

import Foundation
import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(
            gradient:
                Gradient(colors: [Color(red: 39/255, green: 162/255, blue: 219/255), Color(red:75/255, green: 236/255, blue: 254/255)]),
            startPoint: .top,
            endPoint: .bottom)
        .edgesIgnoringSafeArea(.all)
    }
}
