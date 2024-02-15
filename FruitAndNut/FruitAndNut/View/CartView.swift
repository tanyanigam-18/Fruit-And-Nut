//
//  CartView.swift
//  FruitAndNut
//
//  Created by singsys on 30/10/23.
//

import SwiftUI
import Kingfisher

struct CartView: View {
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
                                    Text("Carrot")
                                        .fontWeight(.bold)
                                    Spacer()
                                    Image(systemName: "minus.square.fill")
                                        .resizable()
                                        .renderingMode(.template)
                                        .frame(width: 30, height: 30)
                                        .foregroundStyle(Color.orange)
                                    Text("03")
                                        .fontWeight(.bold)
                                    Image(systemName: "plus.app.fill")
                                        .resizable()
                                        .renderingMode(.template)
                                        .frame(width: 30, height: 30)
                                        .foregroundStyle(Color.orange)
                                        .padding(.trailing, 20)
                                }
                                HStack {
                                    Text("Rs 40")
                                        .fontWeight(.bold)
                                    Text("/Kg")
                                    Spacer()
                                    Text("Rs120")
                                        .fontWeight(.bold)
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
                Spacer()
                VStack {
                    HStack {
                        Text("Subtotal")
                        Spacer()
                        Text("Rs240")
                    }
                    .padding(20)
                    HStack {
                        Text("Discount")
                        Spacer()
                        Text("-40")
                    }
                    .padding(.horizontal, 20)
                    Divider()
                        .foregroundStyle(Color.black)
                        .padding(20)
                    HStack {
                        Text("Total")
                            .fontWeight(.bold)
                        Spacer()
                        Text("Rs200")
                            .fontWeight(.bold)
                    }
                    .padding([.horizontal, .bottom], 20)
                }
                .frame(width: UIScreen.main.bounds.width - 40)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                VStack {
                    Text("Checkout")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                        .padding(20)
                }
                .frame(width: UIScreen.main.bounds.width - 40)
                .background(Color.orange)
                .cornerRadius(10)
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
                Text("Cart")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.leading, 120)
            })
        }
    }
}

#Preview {
    CartView()
}
