//
//  ThreadsTabView.swift
//  Threads Clone
//
//  Created by Deepam Dhakal on 09/12/2023.
//

import SwiftUI

struct ThreadsTabView: View {
    @State private var selectedTab = 0
    @State private var showThreadCreationView = false

    var body: some View {
        TabView(selection: $selectedTab) {
            FeedView()
                .tabItem {
                    Image(systemName: selectedTab == 0 ? "house.circle.fill" : "house")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                }
                .onAppear{selectedTab = 0}
                .tag(0)

            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .onAppear{selectedTab = 1}
                .tag(1)

            Text("")
                .tabItem {
                    Image(systemName: "plus")
                }
                .onAppear{selectedTab = 2}
                .tag(2)

            ActivityView()
                .tabItem {
                    Image(systemName: selectedTab == 3 ? "heart.fill" : "heart")
                        .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                }
                .onAppear{selectedTab = 3}
                .tag(3)

            ProfileView()
                .tabItem {
                    Image(systemName: selectedTab == 4 ? "person.fill" : "person")
                        .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
                }
                .onAppear{selectedTab = 4}
                .tag(4)
        }
// When the selectedTab changes, the provided closure is executed.It sets the value of showThreadCreationView to true if selectedTab is equal to 2, and false otherwise.
        .onChange(of: selectedTab, perform: { newValue in
            showThreadCreationView = selectedTab == 2
        })
//        If showThreadCreationView is true, it presents the sheet with the content being the CreateThreadView(). When the sheet is dismissed, the onDismiss closure is executed, setting selectedTab back to 0.
        .sheet( isPresented: $showThreadCreationView,
                onDismiss: {selectedTab = 0},
                content: { CreateThreadView() }
        )
        .tint(.black)
    }
}

#Preview {
    ThreadsTabView()
}
