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
            
            Button("Place Order", action: { })
                .padding()
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView(order: Order())
    }
}
