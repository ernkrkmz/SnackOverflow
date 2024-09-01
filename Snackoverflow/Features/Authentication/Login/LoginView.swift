//
//  LoginView.swift
//  Snackoverflow
//
//  Created by Eren Korkmaz on 2.09.2024.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        
            VStack{
                Spacer()
                
                Icons.appLogo.rawValue.image().resizable().frame(width: 200 ,height: 250)
                
                Spacer()
                
                Text("Wellcome Back!").font(.system(size: 28, weight: .semibold)).foregroundColor(.teflon)
                
                Spacer()
                
                HTextIconField(hint: "Write Your Email", iconName: "mail").padding(.top,PagePadidng.all.normal.rawValue)
                
                HSecureTextIconField(hint: "Write Your Password", iconName: "lock").padding(.top,PagePadidng.all.normal.rawValue - 8)
                
                Divider()
                
                NormalButton(onTap: {}, title: "Create Account").padding(.top,PagePadidng.all.normal.rawValue)
                
                Spacer()
                
                Text("By clicking 'Create Account' , I agree to [Privacy policy](www.google.com) .").environment(\.openURL, OpenURLAction(handler: { url in
                    print(url)
                    return .discarded
                }))
                
                Spacer()
            }.padding(.all, PagePadidng.all.normal.rawValue)
        
        
    }
}

#Preview {
    LoginView()
}

private struct HTextIconField: View {
    let hint : String
    let iconName : String
    var body: some View {
        HStack {
            iconName.image().resizable()
                .frame(width: 25,height: 25)
            TextField(hint, text: .constant(""))
        }.modifier(TextFieldModifier())
    }
}

private struct HSecureTextIconField: View {
    let hint : String
    let iconName : String
    var body: some View {
        HStack {
            iconName.image().resizable()
                .frame(width: 25,height: 25)
            SecureField(hint, text: .constant(""))
        }.modifier(TextFieldModifier())
    }
}
