//
//  UserCell.swift
//  Threads Clone
//
//  Created by Smart Solar Nepal on 11/12/2023.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircularProfileImageView()
            VStack(alignment: .leading) {
                Text("Dpam_Floyd")
                    .fontWeight(.bold)
                Text("Deepam Dhakal")
            }
            .font(.footnote)

            Spacer()

            Text("Follow")
                .font(.headline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color(.systemGray4), lineWidth: 2 )
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
