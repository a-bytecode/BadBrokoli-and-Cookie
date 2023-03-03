//
//  DatepickerView.swift
//  Swift_PA_SettingsAndCookies
//
//  Created by Alexander Astrachanzev on 03.03.23.
//

import SwiftUI

struct DatepickerView: View {
    
    @Binding var date : Date
    
    
    var body: some View {
        
        VStack {
            DatePicker("Von", selection: $date)
            Divider()
            DatePicker("Bis", selection: $date)
        }
        
    }
}

struct DatepickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatepickerView(date: .constant(.distantFuture))
    }
}
