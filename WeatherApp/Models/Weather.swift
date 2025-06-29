import Foundation

struct WeatherResponse: Codable {
    let main: MainInfo
    let weather: [WeatherInfo]
    let name: String
}

struct MainInfo: Codable {
    let temp: Double
    let tempMin: Double
    let tempMax: Double
}

struct WeatherInfo: Codable {
    let id: Int
    let main: String
    let description: String
}
