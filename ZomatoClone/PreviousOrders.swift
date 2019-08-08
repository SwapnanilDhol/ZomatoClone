//
//  PreviousOrders.swift
//  ZomatoClone
//
//  Created by Swapnanil Dhol on 8/4/19.
//  Copyright © 2019 Swapnanil Dhol. All rights reserved.
//

import SwiftUI

struct PreviousOrders: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image(systemName: "clock")
                Text("Previous Orders")
                    .font(.headline)
            }.padding()
            ScrollView(.horizontal, showsIndicators: false){
                NavigationLink(destination:Text("Previous Orders")){
                HStack {
                    ForEach(0..<6){list in
                PreviousOrderCards()
                        .padding()
                    }
                }
            }.offset(y: -50)
            }.buttonStyle(.plain)
        }
    }
}

#if DEBUG
struct PreviousOrders_Previews: PreviewProvider {
    static var previews: some View {
        PreviousOrders()
    }
}
#endif

struct PreviousOrderCards: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width:230, height:200)
                .foregroundColor(Color.clear)
                .shadow(radius: 12)
            VStack{
                Image("OnestaIcon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:230, height:200)
                    .cornerRadius(10)
                VStack(alignment:.leading){
                    Text("Onesta")
                        .fontWeight(.heavy)
                    Text("PIZZA, ITALIAN")
                        
                        .font(Font.system(size: 12))
                    Rectangle()
                        .frame(height:0.5)
                        .foregroundColor(Color.gray)
                    HStack{
                        Image(systemName:"location")
                            .font(Font.system(size: 10))
                        Text("Live Tracking")
                            .font(Font.system(size: 9))
                        Spacer()
                        Image(systemName:"car.fill")
                            .font(Font.system(size: 10))
                        Text("20 Mins")
                            .font(Font.system(size: 9))
                    }
                }.offset(y: -40)
                    .padding(2)
            }
            
        }
    
        //.frame(width: 200.0)
    }
}
