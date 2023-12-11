//
//  HomeFeedThreadViewCell.swift
//  Threads Clone
//
//  Created by Smart Solar Nepal on 11/12/2023.
//

import SwiftUI

struct ThreadFeedCell: View {
    var body: some View {
        VStack{
//MARK: Aaayush Humagain
            HStack(alignment: .top, spacing: 12) {
                Image("AayushHumagain")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())

                VStack(alignment: .leading, spacing: 5) {
                    HStack{
                        Text("Hanxy_Aayush")
                            .font(.footnote)
                            .fontWeight(.semibold)

                        Spacer()

                        Text("10m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))

                        Button{

                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }
                    }

                        Text("Jab tak suraj chand rahega, Me hamesa chakka rahunga")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)

                    HStack{
                        Button{

                        } label: {
                            Image(systemName: "heart")
                        }

                        Button{

                        } label: {
                            Image(systemName: "bubble.right")
                        }

                        Button{

                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }

                        Button{

                        } label: {
                            Image(systemName: "paperplane")
                        }

                    }
                    .foregroundStyle(.black)
                    .padding(.vertical, 8)

                }
            }
            Divider()

//MARK: Ashim Kharel
            HStack(alignment: .top, spacing: 12) {
                Image("AshimKharel")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())

                VStack(alignment: .leading, spacing: 5) {
                    HStack{
                        Text("Haddi_Ashim")
                            .font(.footnote)
                            .fontWeight(.semibold)

                        Spacer()

                        Text("10m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))

                        Button{

                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }
                    }

                        Text("Dharti Sunheri Amber Neela Mere Dost Aayush ka screw dheela")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)

                    HStack{
                        Button{

                        } label: {
                            Image(systemName: "heart")
                        }

                        Button{

                        } label: {
                            Image(systemName: "bubble.right")
                        }

                        Button{

                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }

                        Button{

                        } label: {
                            Image(systemName: "paperplane")
                        }

                    }
                    .foregroundStyle(.black)
                    .padding(.vertical, 8)

                }
            }
            Divider()

//MARK: Deepam DHakal
            HStack(alignment: .top, spacing: 12) {
                Image("DeepamDhakal")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())

                VStack(alignment: .leading, spacing: 5) {
                    HStack{
                        Text("DpamFloyd")
                            .font(.footnote)
                            .fontWeight(.semibold)

                        Spacer()

                        Text("5m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))

                        Button{

                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }
                    }

                        Text("Call is in hold, My bro is very BOLD")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)

                    HStack{
                        Button{

                        } label: {
                            Image(systemName: "heart")
                        }

                        Button{

                        } label: {
                            Image(systemName: "bubble.right")
                        }

                        Button{

                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }

                        Button{

                        } label: {
                            Image(systemName: "paperplane")
                        }

                    }
                    .foregroundStyle(.black)
                    .padding(.vertical, 8)

                }
            }
            Divider()

//MARK: Gaurav Sharma
            HStack(alignment: .top, spacing: 12) {
                Image("GauravSharma")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())

                VStack(alignment: .leading, spacing: 5) {
                    HStack{
                        Text("gaurav_sweety")
                            .font(.footnote)
                            .fontWeight(.semibold)

                        Spacer()

                        Text("15m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))

                        Button{

                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }
                    }

                        Text("Pulau ma hunxa jeera, ma ho kohinoor hira ")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)

                    HStack{
                        Button{

                        } label: {
                            Image(systemName: "heart")
                        }

                        Button{

                        } label: {
                            Image(systemName: "bubble.right")
                        }

                        Button{

                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }

                        Button{

                        } label: {
                            Image(systemName: "paperplane")
                        }

                    }
                    .foregroundStyle(.black)
                    .padding(.vertical, 8)

                }
            }
            Divider()
        }
        .padding()

    }
}

#Preview {
   ThreadFeedCell()
}
