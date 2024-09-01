//
//  GoogleButton.swift
//  Snackoverflow
//
//  Created by Eren Korkmaz on 1.09.2024.
//

import SwiftUI
struct GoogleButton: View {
    var onTap : () -> Void
    
    var body: some View {
        Button{
            onTap()
        }
    label: {
        HStack{
            Image(Icons.googleLogo.rawValue).resizable().frame(width: 30, height: 30)
            Text(LocalKeys.Auth.google.rawValue.locale())
            Spacer()
        }.tint(.black)
            .font(.title2)
            .padding(.all, PagePadidng.all.normal.rawValue)
            
        
    }       .background(Color.white)
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .cornerRadius(RadiusItems.normal)
    }
}
struct GoogleButton_Previews : PreviewProvider {
    static var previews: some View {
        GoogleButton(onTap: { })
    }
}

