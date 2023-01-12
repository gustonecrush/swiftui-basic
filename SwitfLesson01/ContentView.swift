//
//  ContentView.swift
//  SwitfLesson01
//
//  Created by A Farhan Agustiansyah on 12/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                
                // Section profile
                Section() {
                    NavigationLink(destination: AnotherPage()) {
                        HStack {
                            // profile image
                            Image("User")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle()) // to make circle the image
                            
                            // name and status
                            VStack(alignment: .leading) {
                                Text("Farhan Augustiansyah").font(.headline)
                                Text("IOS Enthusiast").font(.caption)
                            }
                        }
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                    }
                }
                
                // Section general setting
                Section(header: Text("General Settings")) {
                    NavigationLink(destination: AnotherPage()) {
                        HStack(spacing: 20) {
                            Image(systemName: "star.fill")
                                .frame(width: 35, height: 35)
                                .background(Color.orange)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("Star Messages")
                        }
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                    }
                    
                    NavigationLink(destination: AnotherPage()) {
                        HStack(spacing: 20) {
                            Image(systemName: "tv")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("Whatsapp Web/Desktop")
                        }
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                    }
                }
                
                // Account Setting
                Section(header: Text("General Settings")) {
                    NavigationLink(destination: AnotherPage()) {
                        HStack(spacing: 20) {
                            Image(systemName: "person")
                                .frame(width: 35, height: 35)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("Account")
                        }
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                    }
                    
                    NavigationLink(destination: AnotherPage()) {
                        HStack(spacing: 20) {
                            Image(systemName: "phone.circle")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("Chat")
                        }
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                    }
                }
                
            }.navigationBarTitle("Setting")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AnotherPage: View {
    var body: some View {
        Text("Another Page")
    }
}
