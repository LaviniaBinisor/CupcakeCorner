//
//  CheckoutView.swift
//  CupcakeCorner_12.06
//
//  Created by ionut.binisor on 15.06.2023.
//

import SwiftUI

struct CheckoutView: View {
    @ObservedObject var order: Order
    
    var body: some View {
        ScrollView {
            VStack {
                AsyncImage(url: URL(string: "http://hws.dev/img/cupcakes@3x.jpg"), scale: 3) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                .frame(height: 233)
                
                Text("Your total is \(order.cost, format: .currency(code: "USD"))")
                    .font(.title)
                
                Button("Place Order") {
                    Task {
                        await placeOrder()
                    }
                }
                    .padding()
            }
        }
            .navigationTitle("Check out")
            .navigationBarTitleDisplayMode(.inline)
        }
    
    func placeOrder() async {
        
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView(order: Order())
    }
}
