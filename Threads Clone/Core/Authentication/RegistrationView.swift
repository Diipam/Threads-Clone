//
//  RegistrationView.swift
//  Threads Clone
//
//  Created by Deepam Dhakal on 08/12/2023.
//

import SwiftUI

struct RegistrationView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Spacer()
            Image("threads")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack{
                TextField("Enter your fist name", text: $firstName)
                    .modifier(ThreadsTextFieldModifier())
                TextField("Enter your last name", text: $lastName)
                    .modifier(ThreadsTextFieldModifier())
                TextField("Enter your email", text: $email)
                    .textInputAutocapitalization(.none)
                    .modifier(ThreadsTextFieldModifier())
                SecureField("Enter your password", text: $password)
                    .modifier(ThreadsTextFieldModifier())
            }
            
            Button{
                
            } label: {
                Text("Sign Up")
                    .modifier(ThreadlLoginSignInModifier())
            }
            .padding(.vertical)
            
            Spacer()
            Divider()
            
            Button{
                dismiss()
            } label: {
                HStack{
                    Text("Already have an account?")
                    Text("Sign In")
                        .bold()
                }
                .foregroundColor(.black)
                .font(.footnote)
            }
            .padding(.vertical, 16)
        }
    }
}

#Preview {
    RegistrationView()
}
