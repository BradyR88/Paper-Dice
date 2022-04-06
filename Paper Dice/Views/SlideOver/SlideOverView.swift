//
//  SlideOverView.swift
//  Paper Dice
//
//  Created by Brady Robshaw on 4/5/22.
//

import SwiftUI

struct SlideOverView: View {
    
    private var numberOnDice = [4,6,8,10,20,100]
    @State private var selectedNumberOnDice = 4
    
    private var numberOfDice = [Int](1...50)
    @State private var selectedNumberOfDice = 4
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.secondary)
            VStack {
                Image(systemName: "minus")
                    .font(.largeTitle)
                    .foregroundColor(.secondary)
                    .padding(.top, 10)
                Text("Quick Roler")
                    .bold()
                    .font(.largeTitle)
                    .padding()
                
                HStack {
                    Spacer()
                    Picker("number of dice", selection: $selectedNumberOfDice) {
                        ForEach(numberOfDice, id: \.self, content: { dice in
                            Text(String(dice))
                        })
                    }
                    .pickerStyle(.wheel)
                    .frame(width: 100, height: 100)
                    .clipped()
                    //.border(.black)
                    
                    Spacer()
                    
                    Text("d")
                        .bold()
                        .font(.largeTitle)
                    
                    Spacer()
                    
                    Picker("number of dice", selection: $selectedNumberOnDice) {
                        ForEach(numberOnDice, id: \.self, content: { dice in
                            Text(String(dice))
                        })
                    }
                    .pickerStyle(.wheel)
                    .frame(width: 100, height: 100)
                    .clipped()
                    //.border(.black)
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct SlideOverView_Previews: PreviewProvider {
    static var previews: some View {
        SlideOverView()
    }
}
