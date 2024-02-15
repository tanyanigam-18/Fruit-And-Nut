//
//  FruitAndNutViewModel.swift
//  FruitAndNut
//
//  Created by singsys on 30/10/23.
//

import Foundation

class FruitAndNutViewModel: ObservableObject {
    @Published var fruitModel: DataModal?
    @Published var cartViewPushed: Bool = false
    
    init() {
      fruitData()
    }
    
    func fruitData() {
        if let data = jsonData.data(using: .utf8) {
            do {
                let decoder = JSONDecoder()
                let decodedData = try decoder.decode(DataModal.self, from: data)
                print("Decoded Data: ", decodedData)
                self.fruitModel = decodedData
            } catch {
                print("Error decoding JSON: ", error)
            }
        } else {
            print("Failed to convert JSON string to Data")
        }
    }
}
