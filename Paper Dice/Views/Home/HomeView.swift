//
//  HomeView.swift
//  Paper Dice
//
//  Created by Brady Robshaw on 4/5/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var isNavigationActive = false
    @State var isPopoverPresented = false
    
    var body: some View {
        VStack {
            
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
            
            
            Button {
                // this will pull up a card
                isPopoverPresented = true
            } label: {
                ZStack {
                    Rectangle()
                        .cornerRadius(10)
                        .foregroundColor(.orange)
                        .shadow(radius: 8)
                        .edgesIgnoringSafeArea(.bottom)
                    .frame(height: 66)
                    
                    Text("Test")
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor(.secondary)
                }
                    
            }
            .popover(isPresented: $isPopoverPresented) {
                ZStack {
                    Rectangle()
                        .cornerRadius(10)
                        .foregroundColor(.orange)
                        .shadow(radius: 8)
                        .edgesIgnoringSafeArea(.bottom)
                    
                    VStack {
                        Text("Test")
                            .bold()
                            .font(.largeTitle)
                            .foregroundColor(.secondary)
                            .padding()
                        Spacer()
                    }
                }
            }

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
