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
            Text("asdasd")
            Spacer()
        }.tint(.white).background(.deepSkyBlue)
        
    }.buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
    }
}
