//
//  FavoriteView.swift
//  FruitAndNut
//
//  Created by singsys on 30/10/23.
//

import SwiftUI
import Kingfisher

struct FavoriteView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ForEach(0..<2, id: \.self) { index in
                        HStack {
                            let url = URL(string: "https://cdn-icons-png.flaticon.com/128/7096/7096435.png")
                            KFImage(url)
                                .resizable()
                                .frame(width: 60, height: 60)
                                .scaledToFit()
                                .padding([.leading, .top, .bottom], 20)
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("Laughing Buddha")
                                        .fontWeight(.bold)
                                    Spacer()
                                    Image(systemName: "heart.fill")
                                        .renderingMode(.template)
                                        .padding(.trailing, 20)
                                        .foregroundStyle(Color.red)
                                }
                                HStack {
                                    Text("1 unit")
                                    Text("Rs1500")
                                        .fontWeight(.semibold)
                                    Spacer()
                                    Image(systemName: "plus.app.fill")
                                        .resizable()
                                        .renderingMode(.template)
                                        .frame(width: 30, height: 30)
                                        .foregroundStyle(Color.orange)
                                        .padding(.trailing, 20)
                                }
                                .padding(.top, 10)
                            }
                            .padding(.leading, 20)
                        }
                        .frame(width: UIScreen.main.bounds.width - 40)
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding(5)
                        .clipped()
                        .shadow(radius: 5)
                    }
                }
                .clipped()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white.ignoresSafeArea())
            .padding(.top, 10)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                                    HStack {
                Image(systemName: "chevron.left")
                    .renderingMode(.template)
                    .foregroundColor(Color.black)
                Text("favorite")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.leading, 120)
            })
        }
    }
}

#Preview {
    FavoriteView()
}
