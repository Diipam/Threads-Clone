//
//  ProfileView.swift
//  Threads Clone
//
//  Created by Smart Solar Nepal on 11/12/2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 12) {
                    VStack(alignment: .leading, spacing: 4){
                        Text("Deepam Dhakal")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("Dpam_Floyd")
                            .font(.subheadline)
                    }

                    Text("iOS Develoepr at Smart Solar Nepal Corporation")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)

                    Text("10 Followers")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                Spacer()

                CircularProfileImageView()

//                MARK: 58 minutes
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ProfileView()
}
