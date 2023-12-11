//
//  FeedView.swift
//  Threads Clone
//
//  Created by Smart Solar Nepal on 11/12/2023.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false) {
                LazyVStack{
                    ForEach(0 ... 20, id: \.self) { thread in
                        ThreadFeedCell()
                    }
                }
            }
            .refreshable {
                print("HomeView Refreshed")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {

                } label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    NavigationStack{
        FeedView()
    }

}
