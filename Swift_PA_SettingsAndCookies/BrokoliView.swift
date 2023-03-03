//
//  BrokoliView.swift
//  Swift_PA_SettingsAndCookies
//
//  Created by Alexander Astrachanzev on 03.03.23.
//

import SwiftUI

struct BrokoliView: View {
    
   
    
    @Binding var brokoliyAchse : Int
    @Binding var brokolixAchse : Int
    @Binding var counter : Int
    
    let audioPlayer = AudioPlayer()
    
    @State private var imageSize: CGSize = CGSize(width: 100, height: 90)

    
    var body: some View {

       
        Image("BadBrokoli")
        .resizable()
        .frame(width:imageSize.width,height: imageSize.height)
        .shadow(radius: 5,y: 6)
        .onTapGesture {
            
            imageSize.height += 10
            imageSize.width += 10
            
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
            
            brokoliyAchse = Int.random(in: -100...200)
            brokolixAchse = Int.random(in: -100...200)
            
        }
        .offset(x: CGFloat(brokolixAchse), y: CGFloat(brokoliyAchse))
        .padding(10)
    }
}

struct BrokoliView_Previews: PreviewProvider {
    static var previews: some View {
        BrokoliView(brokoliyAchse: .constant(0), brokolixAchse: .constant(0), counter: .constant(0))
    }
}
