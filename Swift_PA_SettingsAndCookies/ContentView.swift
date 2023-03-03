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

    let audioPlayer = AudioPlayer()
    
    var body: some View {
        
        let sounds : [String] = ["cartoonjump",
                                 "funny",
                                 "mobilesound2",
                                 "mobilesound1",
                                 "deepjump",
                                 "sfxjump"]

        let byTenSound : String = "gamechar"

        Button(action: {

            if let soundFile = sounds.randomElement() {
                audioPlayer.playSound(soundFileName: soundFile, soundFileType: "mp3")
            }

            yAchse = Int.random(in: -150...150)
            xAchse = Int.random(in: -150...150)
            counter += 1

                if counter % 10 == 0 {
                    audioPlayer.playSound(soundFileName: byTenSound, soundFileType: "mp3")
                }


        }) {

           CookieView(yAchse: $yAchse, xAchse: $xAchse,counter: $counter)


        }
                
                
//                FormView()

        }
        
        
            
    }




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
