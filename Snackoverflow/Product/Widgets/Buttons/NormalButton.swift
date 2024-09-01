//
//  NormalButton.swift
//  Snackoverflow
//
//  Created by Eren Korkmaz on 1.09.2024.
//

import SwiftUI
struct NormalButton: View {
    var onTap : () -> Void
    var title : String
    
    var body: some View {
        Button{
            onTap()
        }
    label: {
        HStack{
            Spacer()
            Text(title.locale())
            Spacer()
        }.tint(.white)
            .font(.title2)
            .padding(.all, PagePadidng.all.normal.rawValue)
        
    }       .background(.peach)
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .cornerRadius(RadiusItems.normal)

    }
}
struct NormalButton_Previews : PreviewProvider {
    static var previews: some View {
        NormalButton(onTap: { }, title: "Sample")
    }
}
