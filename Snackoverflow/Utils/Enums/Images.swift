//
//  Images.swift
//  Snackoverflow
//
//  Created by Eren Korkmaz on 1.09.2024.
//

import SwiftUI

enum Images : String{
case juice = "img_background"
}

enum IconAssets: String {
    case mail = "mail"
    case lock = "lock"
}

extension String {
    func image() -> Image {
        return Image(self)
    }
}
