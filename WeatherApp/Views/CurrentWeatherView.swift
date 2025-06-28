import SwiftUI

struct CurrentWeatherView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.blue, .cyan]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            VStack {
                Text("Duluth")
                Text("73")
                    .font(.largeTitle)
                Text("Cloudy")
                HStack {
                    Text("H: 87")
                    Text("L: 68")
                }
            }
        }
    }
}

#Preview {
    CurrentWeatherView()
}
