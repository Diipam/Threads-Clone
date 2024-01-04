//
//  ProfileView.swift
//  Threads Clone
//
//  Created by Deepam Dhakal on 11/12/2023.
//

import SwiftUI

struct ProfileView: View {
    @State var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation

//    adding filterwidth so that I can adjsut the width according to the number of cases 
    private var filterWidth: CGFloat {
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 16
    }

    var body: some View {
        ScrollView(showsIndicators: false) {
//            bio and stats
            VStack(spacing: 20) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 12) {
                        VStack(alignment: .leading, spacing: 4){
//                            full name and userid
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
                }

                Button {

                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 352, height: 32)
                        .background(.black)
                        .cornerRadius(13)
                }

//                MARK: User Content list view

                VStack {
                    HStack {
                        ForEach(ProfileThreadFilter.allCases)  { filter in
                            VStack {
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .semibold : .regular)

//                                using if statement logic to put a rectangle
                                if selectedFilter == filter {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: filterWidth, height: 1)
                                        .matchedGeometryEffect(id: "test", in: animation)
                                } else {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: filterWidth, height: 1)
                                }
                            }
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selectedFilter = filter
                                }
                            }
                        }
                    }

//                    using lazystack view to load only the first display image 
                    LazyVStack {
                        ForEach ( 0 ... 10, id: \.self) { threads in
                                ThreadFeedCell()
                        }
                    }
                }
                .padding(.vertical, 8)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ProfileView()
}
