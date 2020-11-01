//
//  File.swift
//  
//
//  Created by Ahmed Mokhtar on 11/1/20.
//

import SwiftUI

@available(iOS 13.0, *)
internal struct RadioForegroundColorEnvironmentKey: EnvironmentKey {
    static var defaultValue: Color = .blue
}

@available(iOS 13.0, *)
internal extension EnvironmentValues {
    var radioButtonColor: Color {
        get { self[RadioForegroundColorEnvironmentKey.self] }
        set { self[RadioForegroundColorEnvironmentKey.self] = newValue }
    }
}
