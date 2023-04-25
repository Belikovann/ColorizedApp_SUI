//
//  ContentView.swift
//  ColorizedApp_SUI
//
//  Created by Аня Беликова on 23.04.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in:  0...255)
    @State private var greenSliderValue = Double.random(in:  0...255)
    @State private var blueSliderValue = Double.random(in:  0...255)
    
    
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

struct SettingColor: View {
    @Binding var value: Double
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
            Slider(value: $value, in: 0...255, step: 1)
        }
        .padding()
    }
}
