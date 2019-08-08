//
//  Popular Cusines.swift
//  ZomatoClone
//
//  Created by Swapnanil Dhol on 8/4/19.
//  Copyright © 2019 Swapnanil Dhol. All rights reserved.
//

import SwiftUI

struct PopularCusines: View {
    let cus = cuisines
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack{
                Image(systemName: "hand.thumbsup")
                Text("Popular Cusines Around you")
                    .fontWeight(.heavy)
            }.padding()
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    
                    ForEach(cus) { offer in
                        
                        ZStack(alignment:.leading){
                            Rectangle()
                                .frame(width:150, height:200)
                                .cornerRadius(8)
                                .foregroundColor(Color.red)
                                .shadow(radius: 6)
                            Image(offer.image)
                                .resizable()
                                .cornerRadius(8)
                               
                                
                            
                            VStack(alignment:.leading){
                                Spacer()
                                Text(offer.name)
                                    .font(.title)
                                  //  .foregroundColor(Color.black)
                                    .fontWeight(.heavy)
                                    .font(Font.system(size: 20))
                                    .lineLimit(2)
                                
                                
                                Text(offer.places)
                                    
                                    .font(.headline)
                                
                            }.padding(4)
                            
                        }.frame(width:150,height:200)
                            .padding(3)
                        
                    }
                }
                
            }
        }
    }
}

#if DEBUG
struct PopularCusinesPreviews: PreviewProvider {
    static var previews: some View {
        PopularCusines()
    }
}
#endif

struct PopCuisines : Identifiable {
    var id = UUID()
    var name : String
    var places : String
    var image : String
    
}

let cuisines = [
    
    PopCuisines(name: "Biryani", places: "102 Places", image:"biryani"),
    PopCuisines(name: "Pizza", places: "192 Places", image: "pizza"),
    PopCuisines(name: "South Indian", places: "100 Places", image: "dosa"),
    PopCuisines(name: "Chinese", places: "99 Places", image: "chinese")
]
