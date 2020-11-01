//
//  File.swift
//  
//
//  Created by Ahmed Mokhtar on 11/1/20.
//

import SwiftUI

@available(iOS 13.0, *)
internal struct RadioForegroundColor: ViewModifier {
    let color: Color
    func body(content: Content) -> some View {
        content
            .environment(\.radioButtonColor, color)
    }
}
