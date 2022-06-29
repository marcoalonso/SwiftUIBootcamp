//
//  Listas.swift
//  BootcampSwiftUI
//
//  Created by marco rodriguez on 15/06/22.
// https://www.youtube.com/watch?v=hGIzLGgf3Bo&t=4s

import SwiftUI

private let programmers = [
    Programmer(id: 1, name: "Alonso", languajes: "Objective C, Kotlin", avatar: Image(systemName: "heart"), favorite: true ),
    Programmer(id: 2, name: "Marco", languajes: "Ruby, Swift", avatar: Image(systemName: "person.fill.checkmark"), favorite: false),
    Programmer(id: 3, name: "Abel", languajes: "Flutter, JAVA", avatar: Image(systemName: "note"), favorite: false),
    Programmer(id: 4, name: "Jimena", languajes: "C#, Swift", avatar: Image(systemName: "car"), favorite: true),
    Programmer(id: 5, name: "Julio", languajes: "Python, JAVA", avatar: Image(systemName: "cloud"), favorite: true),
    Programmer(id: 6, name: "Ricardo", languajes: "Swift, Go", avatar: Image(systemName: "person.badge.plus"), favorite: false),
    Programmer(id: 7, name: "Juan", languajes: "Flutter, Swift", avatar: Image(systemName: "person.badge.clock"), favorite: false)
]


struct ListView: View {
    
    // MARK: - Properties
    @State private var showFavorites = false
    //Crearemos una variable calculada
    private var filteredProgrammers: [Programmer] {
        return programmers.filter { programmer in
            return !showFavorites || programmer.favorite
        }
    }
    
    var body: some View {
        
        VStack {
            Toggle(isOn: $showFavorites) {
                Text("Mostrar Favoritos")
            }.shadow(radius: 12)
            .padding()
            
            NavigationView {
                List (filteredProgrammers, id: \.id) { programmer in
                    
                    NavigationLink(destination: ListDetailView(programmer: programmer)) {
                        RowView(programmer: programmer)
                    }
                    
                   
                }
                .navigationTitle("Programadores")
            }
        }
    }
}

struct Listas_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
