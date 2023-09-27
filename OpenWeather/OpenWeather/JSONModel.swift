//
//  JSONModel.swift
//  OpenWeather
//
//  Created by 이영진 on 2023/02/19.
//

import Foundation

// Codable 나눠쓰기

struct WeatherJSON: Codable{
    let weather:[Weather]
    let main: Main
    let name: String
}

struct Weather: Codable{
    let id: Int
    let main: String
    let description: String
    let icon: String
}

struct Main: Codable{
    let temp: Double
    let feels_like: Double
    let temp_min: Double
    let temp_max: Double
}
