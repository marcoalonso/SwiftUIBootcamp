//
//  StateView.swift
//  BootcampSwiftUI
//  https://www.youtube.com/watch?v=hGIzLGgf3Bo&t=4s
//  Created by marco rodriguez on 28/06/22.
//

import SwiftUI

struct StateView: View {
    
    @State private var value = 0
    @State private var selection: Int?
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("El valor actual es \(value)")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                
                
                Button {
                    value += 1
                } label: {
                    Text("Suma 1")
                        .fontWeight(.heavy)
                        .font(.largeTitle)
                        .foregroundColor(.yellow)
                        .padding()
                        .background(Color.blue
                            .cornerRadius(13)
                            .shadow(radius: 12)
                        )
                }
                
                Spacer()
                Text("Ir a otra pantalla para cambiar el valor.")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                NavigationLink(destination: BindingView(value: $value), tag: 1, selection: $selection){
                    Button {
                        //action
                        selection = 1
                    } label: {
                        //text o Image
                        Image(systemName: "arrow.right")
                            .frame(width: .infinity, height: 50)
                            .font(.largeTitle)
                            .foregroundColor(.black)
                            .padding(.horizontal, 50)
                            .shadow(radius: 12)
                    }
                    .background(Color.blue)
                    .cornerRadius(12)
                    .padding()
                    
                }
                Spacer()
            }.navigationTitle("StateView")
        }
        
        
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
