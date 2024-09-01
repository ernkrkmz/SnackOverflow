//
//  EmailButton.swift
//  Snackoverflow
//
//  Created by Eren Korkmaz on 1.09.2024.
//

import SwiftUI
struct EmailButton: View {
    var onTap : () -> Void
    
    var body: some View {
        Button{
            onTap()
        }
    label: {
        HStack{
            Spacer()
            Text(LocalKeys.Auth.custom.rawValue.locale())
            Spacer()
        }.tint(.peach)
            .background(.white)
            .font(.title2)
            .padding(.all, PagePadidng.all.normal.rawValue)
        
    }       .background(.white)
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .cornerRadius(RadiusItems.normal)

    }
}
struct EmailButton_Previews : PreviewProvider {
    static var previews: some View {
        EmailButton(onTap: { })
    }
}
