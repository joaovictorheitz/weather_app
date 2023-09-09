//
//  ContentView.swift
//  weather_app
//
//  Created by João Victor de Souza Guedes on 09/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                CityText(city: "São Paulo, SP")
    
                ActualTemperature(temperature: 32)
                
                HStack(spacing: 25) {
                    WeatherDayView(
                        weekday: "TER",
                        temperature: 50)
                    WeatherDayView(
                        weekday: "QUA",
                        temperature: 32)
                    WeatherDayView(
                        weekday: "QUI",
                        temperature: 12)
                    WeatherDayView(
                        weekday: "SEX",
                        temperature: 6)
                    WeatherDayView(
                        weekday: "SÁB",
                        temperature: 0)
                }
                .padding(.top)
                
                Button1()
                
                Spacer()
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
