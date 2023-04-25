//
//  ContentView.swift
//  ColorizedApp_SUI
//
//  Created by Аня Беликова on 23.04.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var red = 0.0
    @State private var green = 160.0
    @State private var blue = 139.0
    
    
    var body: some View {
        ZStack{
            Color(.lightGray)
                .ignoresSafeArea()
            VStack(spacing: 5) {
                ColorZone(redValue: Double(red), greenValue: Double(green), blueValue: Double(blue))
                        SettingColor(value: $red, sliderAccentColor: .red)
                            .accentColor(.red)
                        SettingColor(value: $green, sliderAccentColor: .green)
                            .accentColor(.green)
                        SettingColor(value: $blue, sliderAccentColor: .blue)
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


