//
//  ExtractSubviews.swift
//  BootcampSwiftUI
//
//  Created by marco rodriguez on 04/08/22.
//

import SwiftUI

struct ExtractSubviews: View {
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            VStack {
                myItem
                myItem
                myItem
            }
            
            
            
        }
    }
    
    var myItem: some View {
        VStack {
            Text("1")
            Text("Apples")
        }
        .padding()
        .background(Color.gray)
        .cornerRadius(13)
    }
}

struct ExtractSubviews_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviews()
    }
}
