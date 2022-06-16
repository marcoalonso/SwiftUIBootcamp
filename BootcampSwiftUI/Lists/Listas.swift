//
//  Listas.swift
//  BootcampSwiftUI
//
//  Created by marco rodriguez on 15/06/22.
//

import SwiftUI

private let programmers = [
    Programmer(id: 1, name: "Alonso", languajes: "Objective C, Kotlin", avatar: Image(systemName: "person.fill")),
    Programmer(id: 2, name: "Marco", languajes: "Ruby, Swift", avatar: Image(systemName: "person.fill.checkmark")),
    Programmer(id: 3, name: "Abel", languajes: "Flutter, JAVA", avatar: Image(systemName: "person")),
    Programmer(id: 4, name: "Jimena", languajes: "C#, Swift", avatar: Image(systemName: "car")),
    Programmer(id: 5, name: "Julio", languajes: "Python, JAVA", avatar: Image(systemName: "person.fill")),
    Programmer(id: 6, name: "Ricardo", languajes: "Swift, Go", avatar: Image(systemName: "person.badge.plus")),
    Programmer(id: 7, name: "Juan", languajes: "Flutter, Swift", avatar: Image(systemName: "person.badge.clock"))
]


struct Listas: View {
    var body: some View {
        
        NavigationView {
            List (programmers, id: \.id) { programmer in
                
                NavigationLink(destination: ListDetailView(programmer: programmer)) {
                    RowView(programmer: programmer)
                }
                
               
            }
            .navigationTitle("Programadores")
        }
    }
}

struct Listas_Previews: PreviewProvider {
    static var previews: some View {
        Listas()
    }
}
