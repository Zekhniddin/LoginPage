//
//  LoginScreen.swift
//  LoginPage
//
//  Created by Зехниддин on 02/01/21.
//

import SwiftUI

struct LoginScreen: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var progressView = false
    
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .stroke(Color.gray)
                .edgesIgnoringSafeArea(.all)
            
            if progressView {
                ProgressView("Loading...")
                    .progressViewStyle(CircularProgressViewStyle(tint: Color.black))
                    .offset(y: -4)
            }
            
            
            VStack(alignment: .center) {
                Text("LOGIN")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 30)
                
                VStack(alignment: .leading) {
                    Text("Email")
                    
                    HStack {
                        Image(systemName: "envelope.fill")
                        TextField("Email", text: $email)
                    }
                    .padding(.horizontal)
                    .frame(height: 60)
                    .background(Color(red: 242.0 / 255.0, green: 242.0 / 255.0, blue: 242.0 / 255.0))
                    .cornerRadius(8)
                    .shadow(color: .gray, radius: 2)
                }
                .font(.system(size: 20))
                .padding(.horizontal)
                
                
                VStack(alignment: .leading) {
                    Text("Password")
                    
                    HStack {
                        Image(systemName: "lock.fill")
                        SecureField("Password", text: $password)
                    }
                    .padding(.horizontal)
                    .frame(height: 60)
                    .background(Color(red: 242.0 / 255.0, green: 242.0 / 255.0, blue: 242.0 / 255.0))
                    .cornerRadius(8)
                    .shadow(color: .gray, radius: 2)
                }
                .font(.system(size: 20))
                .padding(.horizontal)
                
                
                Button(action: {
                    print("Email: \(email)")
                    print("Password: \(password)")
                    progressView.toggle()
                }) {
                    Text("LOGIN")
                        .font(.headline)
                        .padding()
                        .frame(width: 180, height: 70)
                        .background(Color.green)
                        .cornerRadius(20)
                        .foregroundColor(.black)
                }
                .padding(.top, 40)
                .shadow(color: .gray, radius: 5)
            }
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
