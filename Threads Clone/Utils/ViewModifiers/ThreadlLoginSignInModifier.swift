//
//  ThreadlLoginSignInModifier.swift
//  Threads Clone
//
//  Created by Smart Solar Nepal on 08/12/2023.
//

import SwiftUI

struct ThreadlLoginSignInModifier: ViewModifier {

    func body(content: Content) -> some View {
        content
        .font(.headline)
        .fontWeight(.bold)
        .foregroundStyle(.white)
        .frame(width: 350, height: 44)
        .background(.black)
        .cornerRadius(10)
    }
}
