//
//  HomeView.swift
//  Paper Dice
//
//  Created by Brady Robshaw on 4/5/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var isNavigationActive = false
    
    var body: some View {
        ZStack (alignment: Alignment.top) {
            
            NavigationView {
                
                VStack {
                    
                    NavigationLink(isActive: $isNavigationActive) {
                        DiceBagView()
                    } label: {
                        EmptyView()
                    }
                    .hidden()
                    
                    HomeDiceBagList(isNavigationActive: $isNavigationActive)

                }
                .navigationBarHidden(true)
                	
            }
            
            SlideOverCard {
                SlideOverView()
            }
            
        }
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
