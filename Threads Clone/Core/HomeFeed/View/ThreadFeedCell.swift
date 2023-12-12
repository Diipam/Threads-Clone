//
//  HomeFeedThreadViewCell.swift
//  Threads Clone
//
//  Created by Smart Solar Nepal on 11/12/2023.
//

import SwiftUI

struct FeedItemView: View {
    var imageName: String
    var username: String
    var timeAgo: String
    var postText: String

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text(username)
                        .font(.footnote)
                        .fontWeight(.semibold)

                    Spacer()

                    Text(timeAgo)
                        .font(.caption)
                        .foregroundColor(Color(.systemGray3))

                    Button {
                        // Handle ellipsis button action
                    } label: {
                        Image(systemName: "ellipsis")
                            .foregroundColor(Color(.darkGray))
                    }
                }

                Text(postText)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)

                HStack {
                    // Buttons for heart, bubble, arrow, paperplane
                    ForEach(["heart", "bubble.right", "arrow.rectanglepath", "paperplane"], id: \.self) { systemName in
                        Button {
                            // Handle button action
                        } label: {
                            Image(systemName: systemName)
                        }
                    }
                }
                .foregroundStyle(.black)
                .padding(.vertical, 8)
            }
        }
        .padding(.horizontal)
        Divider()
    }
}

struct ThreadFeedCell: View {
    var body: some View {
        VStack {
            FeedItemView(imageName: "AayushHumagain", username: "Hanxy_Aayush", timeAgo: "10m", postText: "Jab tak suraj chand rahega, Me hamesa chakka rahunga")

            FeedItemView(imageName: "AshimKharel", username: "Haddi_Ashim", timeAgo: "10m", postText: "Dharti Sunheri Amber Neela Mere Dost Aayush ka screw dheela")

            FeedItemView(imageName: "DeepamDhakal", username: "Dpam_Floyd", timeAgo: "5m", postText: "Call is in hold, My bro is very BOLD")

            FeedItemView(imageName: "GauravSharma", username: "gaurav_sweety", timeAgo: "15m", postText: "Pulau ma hunxa jeera, ma ho kohinoor hira")
        }
    }
}

#Preview {
   ThreadFeedCell()
}
