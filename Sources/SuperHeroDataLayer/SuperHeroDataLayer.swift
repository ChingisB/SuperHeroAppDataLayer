// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation


struct SuperHero: Decodable {
    let name: String
    let biography: Biography
    let images: Image
    let powerstats: PowerStats

    struct Image: Decodable {
        let sm: String
    }

    struct Biography: Decodable {
        let fullName: String
    }
    
    struct PowerStats: Decodable {
        let intelligence: Int
        let strength: Int
        let speed: Int
        let durability: Int
        let power: Int
        let combat: Int
    }
}

