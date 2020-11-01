//
//  File.swift
//  
//
//  Created by Ahmed Mokhtar on 11/1/20.
//

import SwiftUI

@available(iOS 13.0, *)
public extension View {
    /// sets the foreground color of the radio image in any `RadioCollection` view
    func radioForegroundColor(_ color: Color) -> some View {
        self.modifier(RadioForegroundColor(color: color))
    }
}
