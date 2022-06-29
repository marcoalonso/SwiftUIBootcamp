//
//  ListDetailView.swift
//  BootcampSwiftUI
//
//  Created by marco rodriguez on 15/06/22.
//

import SwiftUI

struct ListDetailView: View {
    
    var programmer : Programmer
    @Binding var favorite: Bool
    
    var body: some View {
        VStack {
            programmer.avatar
                .resizable().frame(width: 200, height: 200, alignment: .center)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 4)).shadow(color: Color.gray, radius: 5, x: 10, y: 0)
            HStack {
                Text(programmer.name).font(.largeTitle)
                Button {
                    //action
                    favorite.toggle()
                } label: {
                
                    if favorite {
                        Image(systemName: "star.fill").foregroundColor(.yellow)
                    } else {
                        Image(systemName: "star").foregroundColor(.blue)
                    }
                   
                }
            }
            
            Text(programmer.languajes).font(.title)
            Spacer()
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(programmer: Programmer(id: 1, name: "Marco", languajes: "Swift", avatar: Image(systemName: "person.fill"), favorite: true), favorite: .constant(false))
    }
}
