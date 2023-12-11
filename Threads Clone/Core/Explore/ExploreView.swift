//
//  ExploreView.swift
//  Threads Clone
//
//  Created by Smart Solar Nepal on 11/12/2023.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack{
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
