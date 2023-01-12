//
//  ContentView.swift
//  SwitfLesson01
//
//  Created by A Farhan Agustiansyah on 12/01/23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("User")
            .resizable()
            .frame(width: 100, height: 100)
            .cornerRadius(500)
    }
}

struct NameView: View {
    var body: some View {
        Text("Farhan Augustiansyah")
            .foregroundColor(Color.black)
    }
}

struct ContentView: View {
    var body: some View {
        ImageView()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
