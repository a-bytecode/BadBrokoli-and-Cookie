//
//  FormView.swift
//  Swift_PA_SettingsAndCookies
//
//  Created by Brian Moyou on 02.03.23.
//

import SwiftUI

//MARK: FormView
struct FormView: View {
    
    @State var benutzername : String = ""
    @State var selectionsize : SizeBody = SizeBody.large
    @State var benachrichtigungen : PushMessege = PushMessege.alles
    @State var selectedcolor : Color = .blue
    @State var ton : Int = 1
    @State var date : Date = Date.distantFuture
    
    
    var body: some View {
        
        
        Form {
            
            Section(header: Text("Benutzer")) {
              BenutzernameView(benutzername: $benutzername,selectedSize: $selectionsize)
            }
            
            Section(header: Text("Benachrichtigung")) {
                BenachrichtigungenView(pushMessege: $benachrichtigungen)
            }
            
            Section(header: Text("Hintergrund und Ton")) {
                ColorPickerView(selectedColor: $selectedcolor,ton: $ton)
            }
            
            Section(header: Text("Stummschalten")) {
              DatepickerView(date: $date)
                   
            }
            
            ButtonSaveView(benutzername: benutzername, selectionsize: selectionsize, benachrichtigungen: benachrichtigungen, selectedcolor: selectedcolor, ton: ton, date: date)
               
            
        }
        
       
            
        
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
