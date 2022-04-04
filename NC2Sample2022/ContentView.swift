//
//  ContentView.swift
//  NC2Sample2022
//
//  Created by Tafani Rabbani on 04/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List{
                NavigationLink(destination: DetailView(imageName: "profilePic", name: "The Master Koplo Mixer")) {
                    CardView()
                }
                NavigationLink(destination: DetailView(imageName: "profilePic", name: "The Master Koplo Mixer")) {
                    CardView()
                }
                NavigationLink(destination: DetailView(imageName: "profilePic", name: "The Master Koplo Mixer")) {
                    CardView()
                }
                NavigationLink(destination: DetailView(imageName: "profilePic", name: "The Master Koplo Mixer")) {
                    CardView()
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Power")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

struct CardView: View {
    var body: some View {
        HStack{
            Image("profilePic")
                .resizable()
                .frame(width: 50, height: 50)
                .background(.blue)
                .clipShape(Circle())
            Text("The Master Koplo Mixer")
                .font(.subheadline)
        }
    }
}
