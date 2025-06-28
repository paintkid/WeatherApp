import SwiftUI

struct CurrentWeatherView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.theme.backgroundStart, Color.theme.backgroundEnd]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            VStack {
                Text("Duluth")
                Text("73°")
                    .font(.system(size: 80, weight: .thin))
                Text("Cloudy")
                HStack {
                    Text("H: 87°")
                    Text("L: 68°")
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
