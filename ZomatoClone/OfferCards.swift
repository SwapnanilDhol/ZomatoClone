//
//  OfferCards.swift
//  ZomatoClone
//
//  Created by Swapnanil Dhol on 8/4/19.
//  Copyright © 2019 Swapnanil Dhol. All rights reserved.
//

import SwiftUI

struct OfferCards: View {
    var offers = offerData
    let generator = UIImpactFeedbackGenerator()
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
        HStack{
            ForEach(offers) { offer in
                NavigationLink(destination: Text("SampleText")){
                ZStack{
                Rectangle()
                .frame(width:150, height:200)
                .cornerRadius(8)
                    .foregroundColor(offer.color)
                    
                    VStack(alignment:.leading){
                        
                        Text(offer.title)
                            .font(.title)
                            .foregroundColor(Color.black)
                            .fontWeight(.bold)
                            .font(Font.system(size: 20))
                            .lineLimit(2)
                        
                        Text(offer.subtitle)
                            .foregroundColor(Color.black)
                            .font(.subheadline)
                        
                    }.padding(0)
                    
                }.frame(width:150,height:200)
                    .padding(.leading, 10)
                    
                    
                }
            }
        }
            
        }
    }
}

#if DEBUG
struct OfferCards_Previews: PreviewProvider {
    static var previews: some View {
        OfferCards()
    }
}
#endif

struct Offers : Identifiable {
    var id = UUID()
    var title : String
    var subtitle : String
    var image : Image
    var color : Color
    var shadowColor : Color
}

let offerData = [
    Offers(title: "50% OFF", subtitle: "WOOOHOOO", image: Image(systemName: ""), color: Color.yellow, shadowColor: Color.yellow),
    Offers(title: "30% OFF", subtitle: "Upto 30% OFF",image:Image(systemName: ""), color: Color.red, shadowColor: Color.red),
    Offers(title: "Pizza", subtitle: "Who doesn't like pizza?",image:Image(systemName: ""), color: Color.orange, shadowColor: Color.orange),
    Offers(title: "Zomato", subtitle: "Lunch starting at Rs99", image: Image(systemName: ""), color: Color.blue, shadowColor: Color.blue)
    
]
