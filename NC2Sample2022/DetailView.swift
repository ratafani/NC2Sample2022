//
//  DetailView.swift
//  NC2Sample2022
//
//  Created by Tafani Rabbani on 04/04/22.
//

import SwiftUI

struct DetailView: View {
    
    var imageName : String
    var name : String
    @State var motto : String = ""
    
    var body: some View {
        VStack{
            Image(imageName)
                .resizable()
                .frame(width: 150, height: 150)
                .background(.blue)
                .clipShape(Circle())
                .padding(.bottom)
            
            Text(name)
                .font(.title2)
                .bold()
                .padding(.bottom,8)
            
            Text(motto.isEmpty ? "Motto kosong" : motto)
                .italic()
                .font(.subheadline)
                .multilineTextAlignment(.center)
            
            Spacer()
            TextField("Ganti Motto mu", text: $motto)
                .padding()
                .multilineTextAlignment(.center)
            
            Button("Print Motto"){
                print(motto)
            }
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .cornerRadius(12)
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(imageName: "profilePic", name: "The Master Koplo Mixer")
    }
}
