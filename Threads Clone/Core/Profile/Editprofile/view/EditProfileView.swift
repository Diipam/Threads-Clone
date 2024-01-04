//
//  EditProfileView.swift
//  Threads Clone
//
//  Created by Smart Solar Nepal on 04/01/2024.
//

import SwiftUI

struct EditProfileView: View {
    @State private var biotext = ""
    @State private var addlink = ""
    @State private var isProfilePrivate = false
    
    var body: some View {
        NavigationStack {
            ZStack{
                Color(.systemGroupedBackground)
                    .ignoresSafeArea(edges: [.bottom, .horizontal])

                VStack{
//                    For name and profile display
                    HStack {
                        VStack (alignment: .leading) {
                            Text("Name")
                                .fontWeight(.semibold)
                            Text("Deepam Dhakal")
                        }

                        Spacer()

                        CircularProfileImageView()

                    }

                    Divider()
//                    For bio and biotext
                    VStack( alignment: .leading) {
                        Text("Bio")
                            .fontWeight(.semibold)

                        TextField("Enter your bio", text: $biotext, axis: .vertical)
                    }

                    Divider()
//                    For link and link text
                    VStack( alignment: .leading) {
                        Text("Link")
                            .fontWeight(.semibold)

                        TextField("Add Link", text: $addlink, axis: .vertical)
                    }

                    Divider()

//                    For Private Profile
                    Toggle("Private Profile", isOn: $isProfilePrivate)

                }
                .font(.footnote)
                .padding()
                .background(.white)
                .cornerRadius(15)
                .overlay {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color(.systemGray4), lineWidth: 3)
                }
                .padding()


            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button ("Cancel") {

                    }
                    .foregroundColor(.black)
                    .font(.subheadline)
                }

                ToolbarItem(placement: .topBarTrailing) {
                    Button ("Done") {

                    }
                    .foregroundColor(.black)
                    .font(.subheadline)
                }
            }
        }
    }
}

#Preview {
    EditProfileView()
}
