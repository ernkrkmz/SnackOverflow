//
//  FacebookButton.swift
//  Snackoverflow
//
//  Created by Eren Korkmaz on 1.09.2024.
//

import SwiftUI
struct FacebookButton: View {
    var onTap : () -> Void
    
    var body: some View {
        Button{
            onTap()
        }
    label: {
        HStack{
            Image(Icons.facebookLogo.rawValue).resizable().frame(width: 30, height: 30)
            Text(LocalKeys.Auth.facebook.rawValue.locale())
            Spacer()
        }.tint(.white)
            .background(.deepSkyBlue)
            .font(.title2)
            .padding(.all, PagePadidng.all.normal.rawValue)
        
    }       .background(.deepSkyBlue)
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)            
            .cornerRadius(RadiusItems.normal)

    }
}
struct FacebookButton_Previews : PreviewProvider {
    static var previews: some View {
        FacebookButton(onTap: { })
    }
}
