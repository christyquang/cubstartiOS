//
//  SignUp.swift
//  daily checkins
//
//  Created by Christy Quang on 5/6/22.
//

import Foundation

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct SignUp: View {
    
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var isLoggedIn: Bool = false
    
    var body: some View {
        VStack {
            Image("seed 2")
            Text("Log In")
                .foregroundColor(.red)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            TextField("Full Name", text: $name)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            TextField("Email", text: $email)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            TextField("Password", text: $password)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                
            Text("Sign up")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.green)
                .cornerRadius(15.0)
                
            Text("Already have an account?")
            Text("Log In")
                .foregroundColor(Color.blue)
        }
        .padding()
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
