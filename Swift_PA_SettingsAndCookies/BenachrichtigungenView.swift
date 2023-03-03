//
//  BenachrichtigungenView.swift
//  Swift_PA_SettingsAndCookies
//
//  Created by Alexander Astrachanzev on 03.03.23.
//

import SwiftUI

enum PushMessege : String {
    
    case nachrichten
    case erwähnungen
    case alles
    case nichts
    
}

struct BenachrichtigungenView: View {
    
    
    @Binding var pushMessege : PushMessege
    
    var body: some View {
        
        Picker("Benachrichtigungen", selection: $pushMessege) {
            Text("Alles").tag(PushMessege.alles)
            Text("Nichts").tag(PushMessege.nichts)
            Text("Erwähnungen").tag(PushMessege.erwähnungen)
            Text("Nachrichten").tag(PushMessege.nachrichten)
            
        }
    }
}

struct BenachrichtigungenView_Previews: PreviewProvider {
    static var previews: some View {
        BenachrichtigungenView(pushMessege: .constant(.alles))
    }
}
