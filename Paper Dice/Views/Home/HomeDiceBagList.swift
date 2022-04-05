//
//  HomeDiceBagList.swift
//  Paper Dice
//
//  Created by Brady Robshaw on 4/5/22.
//

import SwiftUI

struct HomeDiceBagList: View {
    
    @Binding var isNavigationActive: Bool
    
    var body: some View {
        
        ScrollView {
            
            LazyVStack {
                
                ForEach(1...5, id: \.self) { bag in
                    Button {
                        // set the bag
                        isNavigationActive = true
                    } label: {
                        Rectangle()
                            .cornerRadius(20)
                            .foregroundColor(.secondary)
                            .frame(height: 45)
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

struct HomeDiceBagList_Previews: PreviewProvider {
    static var previews: some View {
        HomeDiceBagList(isNavigationActive: .constant(false))
    }
}
