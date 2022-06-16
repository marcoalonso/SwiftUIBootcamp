//
//  ListDetailView.swift
//  BootcampSwiftUI
//
//  Created by marco rodriguez on 15/06/22.
//

import SwiftUI

struct ListDetailView: View {
    
    var programmer : Programmer
    
    var body: some View {
        VStack {
            programmer.avatar
                .resizable().frame(width: 200, height: 200, alignment: .center)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 4)).shadow(color: Color.gray, radius: 5, x: 10, y: 0)
            Text(programmer.name).font(.largeTitle)
            Text(programmer.languajes).font(.title)
            Spacer()
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(programmer: Programmer(id: 1, name: "Marco", languajes: "Swift", avatar: Image(systemName: "person.fill")))
    }
}
