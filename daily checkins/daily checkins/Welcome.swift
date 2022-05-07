//
//  Welcome.swift
//  daily checkins
//
//  Created by Christy Quang on 5/6/22.
//

import Foundation

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct Welcome: View {
    
    @State var email: String = ""
    @State var isLoggedIn: Bool = false
    @State var isPressed: Bool = false
    
    var body: some View {
        VStack {
            Image("seed 2")
            Text("Welcome!")
                .foregroundColor(.red)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("Create an account and begin growing your garden")
                .foregroundColor(.red)
                .font(.mediumTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
                
            Text("Getting Started")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.green)
                .cornerRadius(15.0)
                .alert(isPressed)
                
            
            Text("Already have an account?")
            Text("Log In")
                .foregroundColor(Color.blue)
                .alert(isLoggedIn)
                //button
        }
        .padding()
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
