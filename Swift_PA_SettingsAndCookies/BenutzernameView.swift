//
//  BenutzernameView.swift
//  Swift_PA_SettingsAndCookies
//
//  Created by Alexander Astrachanzev on 03.03.23.
//

import SwiftUI

enum SizeBody : String {
    
    case small
    case large
    case moderate
    
}

struct BenutzernameView : View {
    
    @Binding var benutzername : String
    
    @Binding var selectedSize : SizeBody
    
    
    var body: some View {
        
        
        
        VStack {
            TextField("Benutzername", text: $benutzername) // ist das gleiche wie " & /
                .accentColor(.black)
                .foregroundColor(.blue)
                .shadow(radius: 2,x: 1,y:2)
            Divider()
            
            Picker("Größe", selection: $selectedSize) {
                Text("Small").tag(SizeBody.small)
                Text("Large").tag(SizeBody.large)
                Text("Moderate").tag(SizeBody.moderate)
            }
            
            
        }
    }
    
    struct BenutzernameView_Previews: PreviewProvider {
        static var previews: some View {
            BenutzernameView(benutzername: .constant(""), selectedSize: .constant(.small))
            
        }
    }
    
}

                             

                             
                             
