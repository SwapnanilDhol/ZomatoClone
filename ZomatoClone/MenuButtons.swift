//
//  MenuButtons.swift
//  ZomatoClone
//
//  Created by Swapnanil Dhol on 8/4/19.
//  Copyright © 2019 Swapnanil Dhol. All rights reserved.
//

import SwiftUI

struct MenuButtons: View {
    let menu = menuData
    var body: some View {
        
        
        
        ScrollView(.horizontal,showsIndicators: false){
        HStack{
            ForEach(menu) { offer in
                ZStack{
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                        .foregroundColor(Color.blue)
                        .shadow(radius: 4)
                    VStack{
                    Image(systemName: offer.image)
                    Text(offer.title)
                        .lineLimit(nil)
                }.padding()
                    
                }
            }
        }
            
        }
    }
}

#if DEBUG
struct MenuButtons_Previews: PreviewProvider {
    static var previews: some View {
        MenuButtons()
    }
}
#endif

struct MenuOptions : Identifiable {
    
    var id = UUID()
    var image : String
    var title : String
}

let menuData = [

MenuOptions(image: "airplane", title: "Exp\nDelivery"),
MenuOptions(image: "dollarsign.circle", title: "Piggy\nBank"),
MenuOptions(image: "percent", title: "Great\nOffers"),
MenuOptions(image: "arrow.turn.right.up", title: "Trending\nPlaces")
]
