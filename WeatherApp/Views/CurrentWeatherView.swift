import SwiftUI

struct CurrentWeatherView: View {
    
    @StateObject private var viewModel = WeatherViewModel()
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.theme.backgroundStart, Color.theme.backgroundEnd]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            VStack {
                Text(viewModel.cityName)
                    .font(.largeTitle)
                    .fontWeight(.medium)
                Text(viewModel.temperature)
                    .font(.system(size: 80, weight: .thin))
                Text(viewModel.weatherDescription)
                    .font(.headline)
                    .fontWeight(.medium)
                HStack {
                    Text(viewModel.highTemp)
                    Text(viewModel.lowTemp)
                }
                .font(.system(size: 14))
            }
            .foregroundColor(Color.theme.accent)
        }
    }
}

#Preview {
    CurrentWeatherView()
}
