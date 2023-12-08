//
//  ThreadsTextFieldModifier.swift
//  Threads Clone
//
//  Created by Smart Solar Nepal on 08/12/2023.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier{
    func body( content: Content) -> some View{
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(15)
            .padding(.horizontal, 24)
    }
}
