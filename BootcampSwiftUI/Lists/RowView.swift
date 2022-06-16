//
//  RowView.swift
//  BootcampSwiftUI
//
//  Created by marco rodriguez on 15/06/22.
//

import SwiftUI

struct RowView: View {
    
    var programmer: Programmer
    
    var body: some View {
        HStack {
            programmer.avatar
                .resizable()
                .frame(width: 50, height: 40, alignment: .center)
                .padding(5)
            VStack (alignment: .leading) {
                Text(programmer.name)
                    .font(.title)
                    .multilineTextAlignment(.leading)
                Text(programmer.languajes)
                
            }
            Spacer()
        }.padding()
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programmer: Programmer(id: 1, name: "Alonso", languajes: "Swift, Java", avatar: Image(systemName: "person.fill")))
            .previewLayout(.sizeThatFits)
    }
}
