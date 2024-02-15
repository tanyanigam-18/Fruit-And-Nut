//
//  FruitAndNutDashboard.swift
//  FruitAndNut
//
//  Created by singsys on 27/10/23.
//

import SwiftUI
import Kingfisher

struct FruitAndNutDashboard: View {
    @StateObject var viewModel = FruitAndNutViewModel()
    

    var body: some View {
        let foodCategory = viewModel.fruitModel?.categories
        NavigationView {
            VStack {
                ScrollView {
                    ForEach(foodCategory ?? [], id: \.self.id) { food in
                        RowItems(
                            title: food.name ?? "",
                            items: food.foodItem ?? []
                        )
                    }
                }
                NavigationLink(
                    destination: CartView(),
                    isActive: $viewModel.cartViewPushed
                ) {}
           }
            .padding(20)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                                    HStack {
                Image("icon-burger")
                    .renderingMode(.template)
                    .foregroundColor(Color.black)
                Text("My Store")
            }, trailing:
                                    HStack {
                Image(systemName: "heart")
                Image(systemName: "cart")
                    .onTapGesture {
                        viewModel.cartViewPushed = true
                    }
            })
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    FruitAndNutDashboard()
}

struct RowItems: View {
    @State var title: String
    @State var items: [Items]

    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "chevron.down")
                    .padding(.trailing, 10)
            }
            Divider()
        }
        .padding(.top, 20)
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 10) {
                ForEach(items, id: \.self.id) { item in
                    VStack(alignment: .leading) {
                        HStack {
                            KFImage(URL(string: "\(item.icon ?? "")"))
                            Spacer()
                            Image(systemName: "heart")
                                .frame(alignment: .top)
                        }
                        .padding(.horizontal, 10)
                        .padding(.top, 10)
                        Text(item.name ?? "")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.leading, 10)
                        HStack {
                            let price = Int(item.price?.rounded() ?? 0.00)
                            Text("\(price)") // Using string interpolation
                                .fontWeight(.bold)
                            Text("/Kg")
                            Spacer()
                            Image(systemName: "plus.app.fill")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 30, height: 30)
                                .foregroundStyle(Color.orange)
                        }
                        .padding(.horizontal, 10)
                        .padding(.bottom, 10)
                    }
                    .frame(width: 182, height: 220)
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(4)
                    .clipped()
                    .shadow(radius: 5)
                }
            }
        }
    }
}
