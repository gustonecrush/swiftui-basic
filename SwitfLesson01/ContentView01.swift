//
//  ContentView01.swift
//  SwitfLesson01
//
//  Created by A Farhan Agustiansyah on 12/01/23.
//

import SwiftUI

struct ContentView01: View {
    var body: some View {
        ZStack {
            Image("User")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                ProfileView()
                FormBox()
            }
            .padding(.all, 20)
        }
    }
}

struct ContentView01_Previews: PreviewProvider {
    static var previews: some View {
        ContentView01()
    }
}

struct ProfileView: View {
    var body: some View {
        VStack {
            Image("User")
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(500)
            
            Text("Hello Realfriend")
                .foregroundColor(Color.white)
        }
    }
}

struct FormBox: View {
    
    // state username, to store input from username
    @State var username: String = ""
    
    // state password, to store input from password
    @State var password: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            // username
            Text("Username").font(.callout).bold()
            TextField("Username...", text:$username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            // password
            Text("Password").font(.callout).bold()
            SecureField("Password...", text:$password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            // button
            Button(action: {print("Hello Button")}) {
                HStack {
                    Spacer()
                    Text("Sign In")
                    Spacer()
                }
            }
            .padding()
            .background(Color.black)
            .cornerRadius(20)
            .foregroundColor(Color.white)
        }
        .padding(.all, 30)
        .background(Color.white)
        .cornerRadius(10)
    }
}
