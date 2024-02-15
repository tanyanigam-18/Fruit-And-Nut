//
//  FruitAndNutModal.swift
//  FruitAndNut
//
//  Created by singsys on 30/10/23.
//

import Foundation

struct FruitAndNutModal: Codable {
    
    let id: Int?
    let name: String?
    let foodItem: [Items]?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case foodItem = "items"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        foodItem = try values.decodeIfPresent([Items].self, forKey: .foodItem)
    }
}

struct Items: Codable {
    let id: Int?
    let name: String?
    let icon: String?
    let price: Double?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case icon = "icon"
        case price = "price"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(Int.self, forKey: .id)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.icon = try container.decodeIfPresent(String.self, forKey: .icon)
        self.price = try container.decodeIfPresent(Double.self, forKey: .price)
    }
}

struct DataModal: Codable {
    let status: Bool
    let message: String
    let error: String?
    let categories: [FruitAndNutModal]
}
