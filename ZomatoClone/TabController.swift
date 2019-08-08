//
//  TabController.swift
//  ZomatoClone
//
//  Created by Swapnanil Dhol on 8/4/19.
//  Copyright © 2019 Swapnanil Dhol. All rights reserved.
//

import SwiftUI

struct TabController: View {
    var body: some View {
        TabView{
            HomeScreen()
                .tabItem{
                    Image(systemName:"house")
                    Text("ORDER")
            }
        .tag(0)
        //End of first Tab
        
        Text("Second Tab")
            .tabItem{
                Image(systemName: "arrowshape.turn.up.right.fill")
                Text("GO OUT")
        }
    .tag(1)
            
            
            Text("Third Tab")
                        .tabItem{
                            Image(systemName:"hare")
                            Text("GOLD")
                    }
                .tag(2)
                //End of first Tab
                
                Text("Fourth Tab")
                    .tabItem{
                        Image(systemName: "magnifyingglass")
                        Text("SEARCH")
                }
            .tag(3)
            
            Text("Fifth Tab")
                .tabItem{
                    Image(systemName:"person")
                    Text("PROFILE")
            }
        .tag(4)
            
    }
}
}
#if DEBUG
struct TabController_Previews: PreviewProvider {
    static var previews: some View {
        TabController()
    }
}
#endif
