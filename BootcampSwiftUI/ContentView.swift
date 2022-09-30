//
//  ContentView.swift
//  BootcampSwiftUI
//
//  Created by marco rodriguez on 13/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            StateView()
                .tabItem {
                    Label("StateViews", systemImage: "list.dash")
                }
            Animation()
                .tabItem {
                    Label("Animations", systemImage: "circle.fill")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
