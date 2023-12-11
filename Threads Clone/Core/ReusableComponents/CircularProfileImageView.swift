//
//  CircularProfileImageView.swift
//  Threads Clone
//
//  Created by Smart Solar Nepal on 11/12/2023.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("DeepamDhakal")
            .resizable()
            .scaledToFill()
            .frame(width: 50, height: 50)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
