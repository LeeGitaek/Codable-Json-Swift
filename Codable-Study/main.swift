//
//  main.swift
//  Codable-Study
//
//  Created by gitaeklee on 2021/02/14.
//

import Foundation

let landmark: Landmark = Landmark(name: "경복궁", foundingYear: 1395, location: Coordinate(latitude: 37.579578, longitude: 126.977026))


// json 인코더를 사용한다.
let encoder:JSONEncoder = JSONEncoder()
// option을 줄 수 있음.
encoder.outputFormatting = .prettyPrinted


// 변환
let jsonData : Data = try encoder.encode(landmark)

if let jsonString:String = String(data: jsonData, encoding: .utf8) {
    print(jsonString)
    /*
         {
           "name" : "경복궁",
           "location" : {
             "longitude" : 126.977026,
             "latitude" : 37.579577999999998
           },
           "foundingYear" : 1395
         }
     */
}


let decoder : JSONDecoder = JSONDecoder()

let landmarkFromJson : Landmark = try decoder.decode(Landmark.self, from: jsonData)

print(landmarkFromJson)

/*
 Landmark(name: "경복궁", foundingYear: 1395, location: Codable_Study.Coordinate(latitude: 37.579578, longitude: 126.977026))
 */


let landmark2 : Landmark2 = Landmark2(name: "경복궁",
                                      foundingYear: 1395,
                                      location: Coordinate(latitude: 37.579578, longitude: 126.977026))


let jsonDataFromLandmark2: Data = try encoder.encode(landmark2)

if let jsonString: String = String(data: jsonDataFromLandmark2, encoding: .utf8) {
    print(jsonString)
    /*
         {
           "title" : "경복궁",
           "founding_date" : 1395,
           "location" : {
             "longitude" : 126.977026,
             "latitude" : 37.579577999999998
           }
         }
     */
}
