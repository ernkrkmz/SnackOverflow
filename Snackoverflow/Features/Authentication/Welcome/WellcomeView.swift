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
            BodyView()
            
        }
    }
}

#Preview {
    WellcomeView().statusBar(hidden: true).ignoresSafeArea(.all)
}





private struct BodyView: View {
    var body: some View {
        GeometryReader { geometry in
            
            
            VStack {
                Spacer()
                Image(Icons.appLogo.rawValue)
                    .resizable()
                    .frame(width: 150,height: 150).colorInvert()
                Spacer()
                FacebookButton(onTap: {})
                GoogleButton(onTap: {})
                AppleButton(onTap: {})
                Divider().frame(height: DividerViewSize.normal).padding(.all,PagePadidng.all.normal.rawValue)
                EmailButton(onTap: {})
                Spacer().frame(height: geometry.dh(height: 0.05))
            }.padding(.paddingAll)
        }
    }
}


