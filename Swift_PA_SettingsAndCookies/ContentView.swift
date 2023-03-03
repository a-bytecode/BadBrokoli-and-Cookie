//
//  ContentView.swift
//  Swift_PA_SettingsAndCookies
//
//  Created by Brian Moyou on 02.03.23.
//

import SwiftUI

struct ContentView: View {
    
    
    // Cookie
    @State var yAchse : Int = Int.random(in: -150...150)
    @State var xAchse : Int = Int.random(in: -150...150)
    // Brokoli
    @State var brokoliyAchse : Int = Int.random(in: -100...200)
    @State var brokolixAchse : Int = Int.random(in: -100...200)
    
    @State var counter : Int = 0

    
    
    var body: some View {

   
          
                
//                CookieView(yAchse: $yAchse, xAchse: $xAchse, counter: $counter)

        BrokoliView(brokoliyAchse: $brokoliyAchse, brokolixAchse: $brokolixAchse, counter: $counter)
    
         
                
                
//                FormView()

        }
        
        
            
    }




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
