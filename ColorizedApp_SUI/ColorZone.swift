//
//  ColorView.swift
//  ColorizedApp_SUI
//
//  Created by Аня Беликова on 25.04.2023.
//

import SwiftUI

struct ColorZone: View {
    
    let redValue: Double
    let greenValue: Double
    let blueValue: Double
    
    
    var body: some View {
        ZStack{
            Color(red: redValue / 255, green: greenValue / 255, blue: blueValue / 255)
                .frame(height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 10))
                .padding()
        }
    }
    struct ColorView_Previews: PreviewProvider {
        static var previews: some View {
            ColorZone(redValue: 0, greenValue: 0, blueValue: 0)
        }
    }
}



