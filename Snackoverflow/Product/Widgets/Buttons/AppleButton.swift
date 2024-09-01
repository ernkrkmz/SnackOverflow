//
//  AppleButton.swift
//  Snackoverflow
//
//  Created by Eren Korkmaz on 1.09.2024.
//

import SwiftUI
struct AppleButton: View {
    var onTap : () -> Void
    
    var body: some View {
        Button{
            onTap()
        }
    label: {
        HStack{
            Image(Icons.appleLogo.rawValue).resizable().frame(width: 30, height: 30).colorInvert()
            Text(LocalKeys.Auth.apple.rawValue.locale())
            Spacer()
        }.tint(.white)
            .background(.black)
            .font(.title2)
            .padding(.all, PagePadidng.all.normal.rawValue)
        
    }       .background(.black)
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .cornerRadius(RadiusItems.normal)

    }
}
struct AppleButton_Previews : PreviewProvider {
    static var previews: some View {
        AppleButton(onTap: { })
    }
}
