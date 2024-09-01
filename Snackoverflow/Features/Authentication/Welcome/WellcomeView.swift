//
//  WellcomeView.swift
//  Snackoverflow
//
//  Created by Eren Korkmaz on 1.09.2024.
//

import SwiftUI

struct WellcomeView: View {
    var body: some View {
        ZStack{
            Image(Images.juice.rawValue).resizable()
            Color("black35")
            VStack {
                Image(Icons.appLogo.rawValue)
                    .resizable()
                .frame(width: 150,height: 150).colorInvert()
                
                FacebookButton(onTap: {})
                
            }.padding(.paddingAll)
            
        }
    }
}

#Preview {
    WellcomeView().statusBar(hidden: true)
}




