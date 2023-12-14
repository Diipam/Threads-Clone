//
//  LoginView.swift
//  Threads Clone
//
//  Created by Deepam Dhakal on 08/12/2023.
//

import SwiftUI

struct LoginView: View {
//    putting state because the value of emaal and password can change frequently
    @State private var email = ""
    @State private var password = ""
    var body: some View {

        NavigationStack {
            VStack{
                Spacer()
                Image("threads")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()

                VStack(spacing: 20){
                    TextField("Enter your name", text: $email)
                        .modifier(ThreadsTextFieldModifier())
//                    creating modifer to simplify the code structure

                    SecureField("Enter your password", text: $password)
                        .modifier(ThreadsTextFieldModifier())
//                    just using modifiers to edit or change the same field 
                }

                NavigationLink{
                    Text("Forgot Password")
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }

                Button{

                } label: {
                    Text("Login")
                        .modifier(ThreadlLoginSignInModifier())
                }

                Spacer()
                Divider()

                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 5) {
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .bold()
                    }
                    .font(.footnote)
                    .foregroundColor(.black)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    LoginView()
        .preferredColorScheme(.light)
}
