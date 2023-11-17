//
//  Profile Card View.swift
//  forum
//
//  Created by Argenis De La Rosa on 11/6/23.
//

import SwiftUI

struct ProfileCardView: View {
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image("argenis3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding()

            Text("Argenis De La Rosa")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 5)

            Text("iOS Developer")
                .font(.subheadline)
                .foregroundColor(.gray)

            Text("About: I'm a digital nomad who loves software engineering and cryptocurrencies. I also love traveling, photography and making videos. Nice to meet you!")
                .font(.body)
                .padding()

            Spacer()
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 5)
        .padding()

    }
}

struct ProfileCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCardView()
    }
}

