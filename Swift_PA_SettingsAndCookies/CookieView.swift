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
    
    
    let audioPlayer = AudioPlayer()
    
    
    var body: some View {
        
        VStack {
            
            Text("Counter: \(counter)")
                .foregroundColor(.black)
                .offset(y: -230)
                .font(.system(size:50,weight: .semibold,design: .monospaced))
            Divider()
                .foregroundColor(.black)
                .font(.system(size: 50))
                .offset(y: -240)
            
            
            Button(action: {
                
                let sounds : [String] = ["cartoonjump",
                                         "funny",
                                         "mobilesound2",
                                         "mobilesound1",
                                         "deepjump",
                                         "sfxjump"]
                
                let byTenSound : String = "gamechar"
                
                if let soundFile = sounds.randomElement() {
                    audioPlayer.playSound(soundFileName: soundFile, soundFileType: "mp3")
                }
                
                yAchse = Int.random(in: -150...150)
                xAchse = Int.random(in: -150...150)
                
                
                counter += 1
                
                
                if counter % 10 == 0 {
                    audioPlayer.playSound(soundFileName: byTenSound, soundFileType: "mp3")
                }
                
            },label: {
                
                Image("CookieImage")
                    .resizable()
                    .frame(width: 100, height: 90)
                    .shadow(radius: 5,y: 6)
                    .onTapGesture {
                        yAchse = Int.random(in: -150...150)
                        xAchse = Int.random(in: -150...150)
                    }
                    .offset(x: CGFloat(xAchse), y: CGFloat(yAchse))
            })
        
            
            
        }
        
        
        
    }
    
}
    
    
    
    struct CookieView_Previews: PreviewProvider {
        static var previews: some View {
            CookieView(yAchse: .constant(0), xAchse: .constant(0),counter: .constant(0))
        }
    }
    

