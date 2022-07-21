//
//  Groups.swift
//  BootcampSwiftUI
//
//  Created by marco rodriguez on 11/07/22.
//

import SwiftUI

struct Groups: View {
    @State var texto: String = ""
    
    var body: some View {
        Group {
            HStack (alignment: .center, spacing: 16) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Image(systemName: "cloud")
                Image(systemName: "car")
            }
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
        }
        
        GroupBox {
            VStack (alignment: .center, spacing: 16) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                TextField("Escribe algo ...", text: $texto)
                    .font(.largeTitle)
                    .foregroundColor(.accentColor)
                    .shadow(radius: 12)
                    .padding()
                Image(systemName: "car")
                    .resizable()
                    .frame(height: 100)
            }
            
            
        }
    }
}

struct Groups_Previews: PreviewProvider {
    static var previews: some View {
        Groups()
    }
}
