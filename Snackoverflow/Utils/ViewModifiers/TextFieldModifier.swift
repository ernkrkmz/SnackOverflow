//
//  TextFieldModifier.swift
//  Snackoverflow
//
//  Created by Eren Korkmaz on 2.09.2024.
//

import Foundation
import SwiftUI

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content.padding()
            .overlay(RoundedRectangle(cornerRadius: 15.0).stroke(lineWidth: 2))
            .foregroundColor(.karl)
    }
}
