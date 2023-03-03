//
//  ContentView.swift
//  Swift_PA_SettingsAndCookies
//
//  Created by Brian Moyou on 02.03.23.
//

import SwiftUI

struct ContentView: View {
    
    
    
    @State var yAchse : Int = Int.random(in: -150...150)
    @State var xAchse : Int = Int.random(in: -150...150)
    @State var counter : Int = 0

    
    var body: some View {
        

        Button(action: {
          
            yAchse = Int.random(in: -150...150)
            xAchse = Int.random(in: -150...150)
            counter += 1
            
        }) {
            
           CookieView(yAchse: $yAchse, xAchse: $xAchse,counter: $counter)
                 

        }
                
                
            
        }
        
        
            
//        FormView()
    }




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
