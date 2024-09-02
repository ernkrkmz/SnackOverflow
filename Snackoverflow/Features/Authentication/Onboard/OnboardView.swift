//
//  OnboardView.swift
//  Snackoverflow
//
//  Created by Eren Korkmaz on 1.09.2024.
//

import SwiftUI

struct OnboardView: View {
    
    @StateObject var onboardViewModel = OnboardViewModel()
    
    //    @State var currentIndex : Int = 0
    
    func count() -> Int {
        return OnboardModel.items.count - 1
    }
    var body: some View {
        
        
        NavigationView {
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    TabView(
                        selection: $onboardViewModel.currentIndex ,
                        content: {
                            ForEach((0...count()), id: \.self) { value in
                                SliderCard(model: OnboardModel.items[value])
                            }
                        }).tabViewStyle(.page(indexDisplayMode: .never))
                        .frame(width: geometry.dw(width: 0.45) , height: geometry.dh(height: 0.55))
                    
                    Spacer()
                    
                    HStack{
                        ForEach((0...count()), id: \.self) { index in
                            if index == onboardViewModel.currentIndex {
                                IndicatoreRectangle(width: geometry.dw(width: 0.06))
                            }else {
                                IndicatoreRectangle(width: geometry.dw(width: 0.03))
                            }
                        }
                    }.frame(height: geometry.dh(height: 0.01)).foregroundColor(.clooney)
                    
                    
                    NavigationLink(isActive: $onboardViewModel.isHomeRedirect){
                        WellcomeView().ignoresSafeArea(.all)
                            .navigationBarHidden(true)
                    } label: {
                        NormalButton(onTap: {
                            onboardViewModel.saveUserLoginAndRedirect()
                        }, title: LocalKeys.Buttons.getStarted.rawValue)
                        .padding(.all,PagePadidng.all.normal.rawValue)
                        .onAppear{
                            onboardViewModel.checkUserFirsthLogin()
                        }
                    }
                    
                    
                }
            }
        }
        
    }
}

private struct IndicatoreRectangle : View {
    var width : Double
    var body : some View {
        Rectangle()
            .cornerRadius(RadiusItems.normal)
            .frame(width: width)
    }
    
}
private struct SliderCard : View {
    
    let model: OnboardModel
    var body : some View {
        VStack {
            Image(model.imageName).resizable()
            Spacer()
            Text(model.description).font(.system(size: FontSize.LargeTitle, weight: .semibold)).multilineTextAlignment(.center).foregroundColor(.peach).padding(.top, 25)
        }
        
    }
    
}

#Preview {
    OnboardView()
}
