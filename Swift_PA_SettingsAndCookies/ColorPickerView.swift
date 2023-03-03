//
//  ColorPickerView.swift
//  Swift_PA_SettingsAndCookies
//
//  Created by Alexander Astrachanzev on 03.03.23.
//

import SwiftUI


struct ColorPickerView: View {
    
    
    @Binding var selectedColor : Color
    @Binding var ton : Int
    
    var body: some View {
        
        VStack {
            
            ColorPicker("Wähle eine Farbe", selection: $selectedColor)
            Text("Selected color: \(selectedColor.description)")
                .padding(13)
                .foregroundColor(.white)
                .background(selectedColor)
                .cornerRadius(11)

            Divider()
            
            Stepper("Lautstärke \(ton)", value: $ton, in: 1...100)
                .foregroundColor(.blue)
                
            
        }
       
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView(selectedColor: .constant(.blue),ton: .constant(0))
    }
}
