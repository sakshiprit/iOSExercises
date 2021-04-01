//
//  Cardview.swift
//  Slots Demo
//
//  Created by Pritam Bolenwar on 18/10/20.
//

import SwiftUI

struct Cardview: View {
    
    @Binding var symbol:String
    @Binding var background:Color
    
    var body: some View {
        
        Image(symbol)
            .resizable()
            .aspectRatio(1,contentMode: .fit)
            .background(background.opacity(0.5))
            .cornerRadius(20)
    }
}

struct Cardview_Previews: PreviewProvider {
    static var previews: some View {
        Cardview(symbol: Binding.constant("cherry"),
                 background: Binding.constant(Color.green))
    }
}
