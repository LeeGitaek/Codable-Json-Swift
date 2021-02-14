//
//  Model.swift
//  Codable-Study
//
//  Created by gitaeklee on 2021/02/14.
//

import Foundation

// Decodable : 자신을 외부표현(external representation)에서 디코딩 할 수 있는 타입
// Encodable : 자신을 외부표현(external representation)으로 인코딩 할 수 있는 타입
// Codable   : Decodable과 Encodable프로토콜을 준수하는 타입(프로토콜)이다


struct Landmark: Codable {
    let name: String
    let foundingYear: Int
    let location: Coordinate
}

struct Coordinate: Codable {
    let latitude: Double
    let longitude: Double
}

struct Landmark2: Codable {
    let name: String
    let foundingYear: Int
    let location: Coordinate
    
    enum CodingKeys: String, CodingKey {
        case name = "title"
        case foundingYear = "founding_date"
        case location
    }
}
