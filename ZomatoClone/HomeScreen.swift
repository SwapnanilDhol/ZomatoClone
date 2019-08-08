//
//  ContentView.swift
//  ZomatoClone
//
//  Created by Swapnanil Dhol on 8/4/19.
//  Copyright © 2019 Swapnanil Dhol. All rights reserved.
//

import SwiftUI

struct HomeScreen: View {
    
    var body: some View {
        
        NavigationView{
            ScrollView(.vertical) {
                VStack(alignment:.leading) {
                    TopBar()
                    SliderSelect()
                        .offset(x: -17, y:-30)
                    OfferCards()
                        .offset(y: -25)
                        
                    SearchBar()
                        .offset(y: -20)
                    ForEach(0..<3) {item in
                        NavigationLink(destination:Text("Sangeetha Veg Resturant")){
                            ResturantCards()
                                .padding()
                            Rectangle()
                                .frame(height:0.5)
                                .foregroundColor(Color.gray)
                        }
                        .buttonStyle(.plain)
                    }.offset(y:-20)
                    
                    PreviousOrders()
                    
                    ForEach(0..<2) {item in
                        NavigationLink(destination:Text("Sangeetha Veg Resturant")){
                            ResturantCards()
                                .padding()
                            Rectangle()
                            .frame(height:0.5)
                            .foregroundColor(Color.gray)
                        }
                        .offset(y: -80)
                        .buttonStyle(.plain)
                    }
                    PopularCusines()
                    .offset(y: -80)
                }
                
            }
                
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}







#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
#endif

struct TopBar: View {
    var body: some View {
        HStack {
            VStack(alignment:.leading){
                HStack{
                    Image(systemName: "mappin")
                        
                        .frame(width: 20, height: 20)
                    Text("YOUR LOCATION")
                        .foregroundColor(Color.gray)
                        .font(Font.system(size: 12))
                    
                }
                Text("HOME - HGT Homes, Semmanjeri")
                    .font(Font.system(size: 17))
                Text("Tower 5 Door 141 DLF Farden")
                    .fontWeight(.light)
                    .font(Font.system(size: 14))
                
                
            }
            Spacer()
            Image(systemName:"doc.plaintext")
                .resizable()
                .frame(width: 20, height: 30)
        }
        .padding()
    }
}

struct SliderSelect: View {
    @State private var currentSelection = false
    let generator = UIImpactFeedbackGenerator()
    var body: some View {
        HStack {
            VStack {
                HStack{
                    Text("Delivery")
                    Image(systemName:"car.fill")
                    
                }.onTapGesture {
                    if self.currentSelection{
                        self.generator.impactOccurred()
                    }
                    self.currentSelection = false
                }
                Rectangle()
                    .frame(width:90,height:5)
                    .foregroundColor(self.currentSelection ? Color.clear:Color.red)
            }
            .padding()
            VStack {
                HStack{
                    Text("Self Pickup")
                    Image(systemName:"bag")
                }.onTapGesture {
                    if self.currentSelection{
                        
                    }
                    else
                    {
                        self.generator.impactOccurred()
                    }
                    self.currentSelection = true
                }
                Rectangle()
                    .frame(width:100,height:5)
                    .foregroundColor(self.currentSelection ? Color.red:Color.clear)
                
            }
        }.padding()
    }
}

struct SearchBar: View {
    @State var newText : String = ""
    var body: some View {
        HStack {
            
                
            Image(systemName:"magnifyingglass")
                .foregroundColor(Color.gray)
                .padding(.leading,10)
                TextField("Search for Resturants, food...", text: $newText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .frame(width:300)
            Spacer()
            Image(systemName:"slider.horizontal.3")
                .padding()
            
        }
        
    }
}
