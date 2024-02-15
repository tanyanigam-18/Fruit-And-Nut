//
//  Demo.swift
//  FruitAndNut
//
//  Created by singsys on 31/10/23.
//

import SwiftUI

struct Demo: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "plus.app.fill")
//                    .resizable()
//                    .frame(width: 100, height: 100)
                Text("Tanya Nigam")
                .frame(maxWidth: .infinity)
                .background(Color.red)
            Spacer()
                .padding(.leading)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue)
    }
}

#Preview {
    Demo()
}
