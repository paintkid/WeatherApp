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
        .tint(Color.theme.accent)
    }
}

#Preview {
    MainView()
        .preferredColorScheme(.dark)
}
