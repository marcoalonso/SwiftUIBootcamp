//
//  StateExample.swift
//  BootcampSwiftUI
//
//  Created by marco rodriguez on 21/07/22.
//

import SwiftUI

struct StateExample: View {
    
    @State var backgroundColor: Color = Color.green
    @State private var myTitle: String = "Hola :) "
    @State private var count = 0
    
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            //Content
            VStack(spacing: 20) {
                Text(myTitle)
                Text("Count : \(count)")
                    .underline()
                    .font(.largeTitle)
            
            
            HStack (alignment: .center, spacing: 16) {
                Button {
                    //Action
                    backgroundColor = .white
                    myTitle = ":D Saludos :D"
                } label: {
                    Text("Btn 1")
                        .fontWeight(.heavy)
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.yellow
                            .cornerRadius(20)
                            .shadow(radius: 12)
                        )
                }.padding()
                
                
                Button {
                    //Action
                    backgroundColor = .purple
                    count += 1
                    myTitle = "i love SWIFTUI"
                } label: {
                    Text("Btn 2")
                        .fontWeight(.heavy)
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue
                            .cornerRadius(20)
                            .shadow(radius: 12)
                        )
                    }
                }//Hstack
            }//Vstack
        }//Zstack
    }
}

struct StateExample_Previews: PreviewProvider {
    static var previews: some View {
        StateExample()
    }
}
