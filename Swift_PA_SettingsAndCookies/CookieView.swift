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
    
    @State private var imageSize: CGSize = CGSize(width: 100, height: 90)
    @State var showText = false
    @State private var showAlert = false


    
    var body: some View {
        
        ZStack {
            

            if showText {

                Text("Cookie Wins!")
                    .foregroundColor(.red)
                    .offset(y: -230)
                    .font(.system(size:50,weight: .bold,design: .rounded))
                    .shadow(radius: 10,x:5,y: 10)
                    .onTapGesture {
                        showText = false
                        counter = 10
                    }
                
            } else {
                
                Image("CookieImage")
                    .resizable()
                    .frame(width: imageSize.width, height: imageSize.height)
                    .shadow(radius: 5,y: 6)
                    .onTapGesture {
                        
                        imageSize.width += 10
                        imageSize.height += 10
                        
                        let sounds : [String] = ["cartoonjump",
                                                 "funny",
                                                 "mobilesound2",
                                                 "mobilesound1",
                                                 "deepjump",
                                                 "sfxjump"]
                        
                        let byTenSound : String = "gamechar"
                        
                        let byWinSound : String = "woodylaugh"
                        
                        if let soundFile = sounds.randomElement() {
                            audioPlayer.playSound(soundFileName: soundFile, soundFileType: "mp3")
                        }
                        
                        yAchse = Int.random(in: -150...150)
                        xAchse = Int.random(in: -150...150)
                        
                        
                        counter -= 1
                        
                        
                        if counter % 10 == 0 {
                            audioPlayer.playSound(soundFileName: byTenSound, soundFileType: "mp3")
                        }
                        
                        if counter <= 0 {
                            
                            showText = true
                            audioPlayer.playSound(soundFileName: byWinSound, soundFileType: "mp3")
                            
                            if showText == true {
                                imageSize.width = 100
                                imageSize.height = 90
                            }
                            
  
                        }
                        
                        yAchse = Int.random(in: -150...150)
                        xAchse = Int.random(in: -150...150)
                    }
                
                    .offset(x: CGFloat(xAchse), y: CGFloat(yAchse))
                
            }
        }
        
        //        VStack {
        //
        //            Text("Counter: \(counter)")
        //                .foregroundColor(.black)
        //                .offset(y: -230)
        //                .font(.system(size:50,weight: .semibold,design: .monospaced))
        //            Divider()
        //                .foregroundColor(.black)
        //                .font(.system(size: 50))
        //                .offset(y: -240)
        
        
        
        
        
    }
    
    
    
    
    struct CookieView_Previews: PreviewProvider {
        static var previews: some View {
            CookieView(yAchse: .constant(0), xAchse: .constant(0),counter: .constant(0))
        }
    }
}

