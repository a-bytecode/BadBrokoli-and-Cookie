//
//  CookieView.swift
//  Swift_PA_SettingsAndCookies
//
//  Created by Brian Moyou on 02.03.23.
//

import SwiftUI

//MARK: CookieView
struct CookieView: View {
    
    
    @Binding var yAchse : Int
    @Binding var xAchse : Int
    @Binding var counter : Int

    
    var body: some View {
        
        
        VStack {
            
            Text("Counter: \(counter)")
                .foregroundColor(.black)
                .offset(y: -230)
                .font(.system(size: 40,weight: .semibold,design: .monospaced))
            Divider()
                .foregroundColor(.black)
                .font(.system(size: 50))
                .offset(y: -230)
                
            
            Image("CookieImage")
            .resizable()
            .frame(width: 100, height: 90)
            .shadow(radius: 5,y: 6)
            .padding(50)
            .offset(x: CGFloat(xAchse), y: CGFloat(yAchse))

        }

        
        
    }
}

struct CookieView_Previews: PreviewProvider {
    static var previews: some View {
        CookieView(yAchse: .constant(0), xAchse: .constant(0),counter: .constant(0))
    }
}
