//
//  RadioCollection.swift
//  
//
//  Created by Ahmed Mokhtar on 10/28/20.
//

import SwiftUI

@available(iOS 13.0, *)
internal struct RadioCollection<Data, Content>: View where Data: RandomAccessCollection, Content: View, Data.Element: Identifiable {
    
    private let content: (Data.Element) -> Content
    private let data: Data
    @Environment(\.radioButtonColor) private var radioColor
    
    @Binding var selectedData: Data.Element?
    
    public init(selectedData: Binding<Data.Element?>, data: Data, @ViewBuilder content: @escaping (Data.Element) -> Content) {
        self._selectedData = selectedData
        self.content = content
        self.data = data
    }
    
    public var body: some View {
        ForEach(data) { element in
            HStack {
                if let selectedData = selectedData, selectedData.id == element.id {
                    Image(systemName: "largecircle.fill.circle")
                        .renderingMode(.template)
                        .foregroundColor(radioColor)
                } else {
                    Image(systemName: "circle")
                        .renderingMode(.template)
                        .foregroundColor(radioColor)
                }
                content(element)
                if element.id != data.last?.id {
                    Spacer()
                }
            }
            .onTapGesture {
                selectedData = element
            }
        }
        
    }
}

@available(iOS 13.0, *)
public extension View {
    /// sets the foreground color of the radio image in any `RadioCollection` view
    func radioForegroundColor(_ color: Color) -> some View {
        self.modifier(RadioForegroundColor(color: color))
    }
}

@available(iOS 13.0, *)
internal struct RadioForegroundColor: ViewModifier {
    var color: Color
    func body(content: Content) -> some View {
        content
            .environment(\.radioButtonColor, color)
    }
}

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

