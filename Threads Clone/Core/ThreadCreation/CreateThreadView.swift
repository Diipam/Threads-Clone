//
//  ThreadCreationView.swift
//  Threads Clone
//
//  Created by Deepam Dhakal on 11/12/2023.
//

import SwiftUI

struct CreateThreadView: View {
    @State private var threadText = ""
    @Environment (\.dismiss) var dismiss

    var body: some View {
        NavigationStack{
            VStack {
                HStack (alignment: .top) {
                    CircularProfileImageView()

                    VStack(alignment: .leading, spacing: 4) {
                        Text("Dpam_Floyd")
                            .fontWeight(.bold)

                        TextField("Start a thread ...", text: $threadText, axis: .vertical)
//                        axis autoadjust the textfield vertically
                    }
                    .font(.footnote)

                    Spacer()
// Checks if threadtext is not empty than enable the button
                    if !threadText.isEmpty {
                        Button {
// performs the action that when the button is pressed it clear the threadtext.
                            threadText = ""
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundStyle(.gray)
                        }
                    }
                }
                .padding()

                Spacer()
            }

            .navigationTitle("New Thread")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel"){
                        dismiss()

                    }
                    .font(.subheadline)
                    .foregroundStyle(.black)
                }

                ToolbarItem(placement: .topBarTrailing) {
                    Button("Post") {

                    }
// Checks if threadtext is empty opacity is 0.5 or else 1
                    .opacity(threadText.isEmpty ? 0.5 : 1.0)
// if the threadtext is empty the post button is disabled
//                    .disabled(threadText.isEmpty)
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                }
            }

        }

    }
}

#Preview {
    CreateThreadView()
}
