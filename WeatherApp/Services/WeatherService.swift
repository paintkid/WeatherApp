import Foundation

class WeatherService {
    
    private let apiKey = "869323ef18e3f9ba6d1f57a5ab9bbbdf"
    private let baseUrl = "https://api.openweathermap.org/data/2.5/weather"
    
    func fetchWeather(for city: String) async throws -> WeatherResponse {
        let urlString = "\(baseUrl)?q=\(city)&appid=\(apiKey)&units=imperial"
        
        guard let url = URL(string: urlString)
        else {
            throw URLError(.badURL)
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
               
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
               
        do {
            let weatherResponse = try decoder.decode(WeatherResponse.self, from: data)
            return weatherResponse
        } catch {
            print("Error decoding weather data: \(error)")
            throw error
        }
    }
}
