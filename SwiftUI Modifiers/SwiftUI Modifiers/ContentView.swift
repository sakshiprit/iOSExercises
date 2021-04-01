//
//  ContentView.swift
//  SwiftUI Modifiers
//
//  Created by Christopher Ching on 2019-12-06.
//  Copyright © 2019 Christopher Ching. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isHearted = false
    
    @State private var numHeart = 999
    
    var body: some View {
        
        VStack {
            
            Image("pinkbuilding")
                .resizable()
                .cornerRadius(30)
                .padding()
                .shadow(radius: 10)
            
            VStack{
            HStack{
                Button(action: { self.isHearted.toggle()
                    if self.isHearted{
                        self.numHeart += 1
                    }
                    else {
                        self.numHeart -= 1
                    }
                    
                }) {
                    
                    if isHearted {
                        Image(systemName:
                                "heart.fill")
                    }
                    else {
                        
                        Image(systemName: "heart")
                    }
                    
                }
                
                Text(String(numHeart))
            }
                if isHearted{
            Text("This pink building is totally amazing!")
                .fontWeight(.heavy)
                .foregroundColor(.pink)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .shadow(color: .black, radius: 0.1, x: 2, y: 2)
                    
                }
                else{
                    Text("Oh this is just a okay building.")
                }
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

