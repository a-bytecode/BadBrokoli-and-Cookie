//
//  ButtonSaveView.swift
//  Swift_PA_SettingsAndCookies
//
//  Created by Alexander Astrachanzev on 03.03.23.
//

import SwiftUI

struct ButtonSaveView: View {

    let benutzername : String
    let selectionsize : SizeBody
    let benachrichtigungen : PushMessege
    let selectedcolor : Color
    let ton : Int
    let date : Date
    
    
    var body: some View {
        
        
        Button(action: {
            print("Benutzername: \(benutzername)\nGröße: \(selectionsize)\nBenachrichtigungen \(benachrichtigungen)\nFarbe: \(selectedcolor)\nLautstärke: \(ton)\n\(date)")
            
        }) {
            Text("Speichern")
                .padding(10)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(10)
 
        }
    }
}

struct ButtonSaveView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSaveView(benutzername: "",
                       selectionsize: SizeBody.large,
                       benachrichtigungen: PushMessege.alles,
                       selectedcolor: .red,
                       ton: 1,
                       date: Date.distantFuture)
    }
}
