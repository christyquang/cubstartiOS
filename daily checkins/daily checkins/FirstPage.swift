//
//  FirstPage.swift
//  daily checkins
//
//  Created by Christy Quang on 5/6/22.
//

import Foundation

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct FirstPage: View {
  
    @State var isTouched: Bool = false
    
    var body: some View {
        VStack {
            Image("image 1")
            Text("welcome to bud!")
                .foregroundColor(.red)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
                .alert(isTouched)
        }
        .padding()
    }
}

struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}
