//
//  OnboardModel.swift
//  Snackoverflow
//
//  Created by Eren Korkmaz on 1.09.2024.
//

import Foundation

struct OnboardModel : Identifiable{
    var id: UUID = UUID()
    
    let imageName: String
    let description: String
    
    static let items : [OnboardModel] =
         [
            OnboardModel(imageName: "onboard_1", description: "Hand-pickle high quality snacks."),
            OnboardModel(imageName: "onboard_2", description: "Shop global. Mind-blowing affordable."),
            OnboardModel(imageName: "onboard_3", description: "Deliver on the promise of time.")
        ]
    
    
}
