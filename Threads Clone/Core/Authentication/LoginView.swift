//
//  LoginView.swift
//  Threads Clone
//
//  Created by Smart Solar Nepal on 08/12/2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {

        VStack{
            Spacer()
            Image("threads")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()

            VStack{
                TextField("Enter your name", text: $email)
                SecureField("Enter your password", text: $password)
            }

            NavigationLink{
                Text("Forgot Password")
            } label: {
                Text("Forgot Password?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .padding(.top)
                    .padding(.trailing, 28)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .padding(.vertical)

            Button{

            } label: {
                Text("Login")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(width: 350, height: 44)
                    .background(.black)
                    .cornerRadius(10)
            }

            Spacer()

            Divider()

            NavigationLink{
                Text("Registration View")
            } label: {
                HStack(spacing: 5){
                    Text("Don't have an account?")
                    Text("Sign Up")
                        .fontWeight(.bold)
                }
                .font(.footnote)
                .foregroundStyle(.black)
            }
            .padding(.vertical, 18)


        }
    }
}

#Preview {
    LoginView()
}
