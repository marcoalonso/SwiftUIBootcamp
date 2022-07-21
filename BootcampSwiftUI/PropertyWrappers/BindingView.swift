//
//  BindingView.swift
//  BootcampSwiftUI
//
//  Created by marco rodriguez on 28/06/22.
//

import SwiftUI

struct BindingView: View {
    @Binding var value: Int
    
    var body: some View {
        VStack {
            Button {
                value += 2
            } label: {
                Text("Suma 2".uppercased())
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.vertical, 20)
                    .padding(.horizontal, 60)
                    .background(Color.green
                        .cornerRadius(13)
                        .shadow(radius: 12)
                    )
            }
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        //Si queremos crear 1 instancia de BindingView requiere un valor : .constant(type) //@Binding var value: Int
        BindingView(value: .constant(6))
    }
}
