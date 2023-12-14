//
//  ExploreView.swift
//  Threads Clone
//
//  Created by Deepam Dhakal on 11/12/2023.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack{
//                    looping because we have to load the first 20 threads
                    ForEach(0 ... 10, id: \.self) { users in
                        VStack {
                            
                            UserCell()

                            Divider()
                        }
                        .padding(.vertical, 5)
                    }
                }
            }
            .searchable(text: $searchText, prompt: "Search your list")
//            puts a search bar field, kind of similar to user id and password field but instead uses prompt
            
            .navigationTitle("Search")
            .refreshable {
                print("search history")
            }
        }
    }
}

#Preview {
    ExploreView()
}
