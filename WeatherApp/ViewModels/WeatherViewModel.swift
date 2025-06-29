import Foundation

class WeatherViewModel: ObservableObject {
    
    @Published var cityName: String = "Loading..."
    @Published var temperature: String = "--"
    @Published var weatherDescription: String = "..."
    @Published var highTemp: String = "H:--"
    @Published var lowTemp: String = "L:--"
    @Published var errorMessage: String?
    
    private let weatherService = WeatherService()
    
    init() {
        getWeather(for: "Duluth")
    }
    
    func getWeather(for city: String) {
        self.errorMessage = nil
        
        Task {
            do {
                let weatherResponse = try await weatherService.fetchWeather(for: city)
                
                self.cityName = weatherResponse.name
                self.temperature = "\(Int(weatherResponse.main.temp.rounded()))°"
                self.weatherDescription = weatherResponse.weather.first?.main ?? "Unknown"
                self.highTemp = "H: \(Int(weatherResponse.main.tempMax.rounded()))°"
                self.lowTemp = "L: \(Int(weatherResponse.main.tempMin.rounded()))°"
            } catch {
                self.errorMessage = "Sorry, could not fetch weather for \(city)."
                print("Error fetching or decoding weather: \(error)")
            }
        }
    }
    
}
