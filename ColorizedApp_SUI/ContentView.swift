//
//  ContentView.swift
//  ColorizedApp_SUI
//
//  Created by Аня Беликова on 23.04.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = 0
    @State private var greenSliderValue = 0
    @State private var blueSliderValue = 0
    
    
    var body: some View {
        ZStack{
            Color(.lightGray)
                .ignoresSafeArea()
            VStack {
                ColorView(redValue: redSliderValue, greenValue: greenSliderValue, blueValue: blueSliderValue)
                SettingColor(value: $redSliderValue)
                    .accentColor(.red)
                SettingColor(value: $greenSliderValue)
                    .accentColor(.green)
                SettingColor(value: $blueSliderValue)
            }
                .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


