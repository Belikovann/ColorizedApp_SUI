//
//  ColorView.swift
//  ColorizedApp_SUI
//
//  Created by Аня Беликова on 25.04.2023.
//

import SwiftUI

struct ColorView: View {
    
    let redValue: Double
    let greenValue: Double
    let blueValue: Double
    
    
    var body: some View {
        ZStack{
            Color(red: redValue, green: greenValue, blue: blueValue)
                .ignoresSafeArea()
                .frame(height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 20))
                .padding()
        }
    }
    struct ColorView_Previews: PreviewProvider {
        static var previews: some View {
            ColorView(redValue: 0, greenValue: 0, blueValue: 0)
        }
    }
}


    
