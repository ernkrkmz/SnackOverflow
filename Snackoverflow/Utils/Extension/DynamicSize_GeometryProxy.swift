//
//  Geometry.swift
//  Snackoverflow
//
//  Created by Eren Korkmaz on 1.09.2024.
//

import SwiftUI
extension GeometryProxy {
    public  func dh(height : Double) -> Double {
        return size.height * height
    }
    public func dw(width : Double) -> Double {
        return size.height * width
    }
}
