//
//  ContentView.swift
//  WeatherApp
//
//  Created by joel on 6/28/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            CurrentWeatherView()
                .tabItem {
                    Label("Weather", systemImage: "cloud.sun.fill")
                }
        }
        .tint(.white)
    }
}

#Preview {
    MainView()
        .preferredColorScheme(.dark)
}
