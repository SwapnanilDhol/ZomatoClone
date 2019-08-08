//
//  ResturantCards.swift
//  ZomatoClone
//
//  Created by Swapnanil Dhol on 8/4/19.
//  Copyright © 2019 Swapnanil Dhol. All rights reserved.
//

import SwiftUI

struct ResturantCards: View {
    var body: some View {
        HStack{
            Image("ResturantIcon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(5)
            VStack(alignment: .leading){
                HStack {
                    Text("Sangeetha Veg Resturant")
                        .font(.headline)
                    Spacer()
                    
                    ZStack {
                        Rectangle()
                            .frame(width:30, height: 20)
                            .foregroundColor(Color.green)
                            .cornerRadius(3)
                        Text("4.3")
                            .foregroundColor(Color.white)
                            .font(.headline)
                            .padding()
                    }
                }
                Text("South Indian, North Indian")
                    .font(.subheadline)
                
                    .foregroundColor(Color.gray)
                
                Rectangle()
                    .frame(height: 0.5)
                    .foregroundColor(Color.gray)
                
                
                HStack{ Image(systemName:"indianrupeesign.circle")
                    Text("300 per person")
                        .font(Font.system(size: 13))
                }
                Rectangle()
                    .frame(height: 0.5)
                    .foregroundColor(Color.gray)
                HStack{
                    Image(systemName: "location")
                    Text("Live Tracking")
                     .font(Font.system(size: 12))
                      Spacer()
                    HStack{
                    Image(systemName:"car.fill")
                    Text("40 Mins")
                        .lineLimit(nil)
                     .font(Font.system(size: 13))
                    }
                }
                
                
            }
            
        }
        .frame(height: 150)
        
    }
}

#if DEBUG
struct ResturantCards_Previews: PreviewProvider {
    static var previews: some View {
        ResturantCards()
    }
}
#endif
