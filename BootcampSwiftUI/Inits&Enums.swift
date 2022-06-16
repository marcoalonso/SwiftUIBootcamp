//
//  Inits&Enums.swift
//  BootcampSwiftUI
//
//  Created by marco rodriguez on 16/06/22.
//

import SwiftUI

struct Inits_Enums: View {
    
    
    // MARK: - Variables
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init (count: Int, fruit: Fruit){
        
        self.count = count
//        self.title = title
//
//        if title == "Apples" {
//            self.backgroundColor = .red
//        } else {
//            self.backgroundColor = .orange
//        }
        
        switch fruit {
            
        case .orange:
            self.title = "Oranges"
            self.backgroundColor = .orange
        case .apple:
            self.title = "Apples"
            self.backgroundColor = .red
            
        case .pinaple:
            self.title = "Pinapples"
            self.backgroundColor = .yellow
            
        case .strowberry:
            self.title = "strowberry"
            self.backgroundColor = .pink
        }
        
    }
    
    //enums
    enum Fruit {
        case apple
        case orange
        case pinaple
        case strowberry
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150, alignment: .center)
        .background(backgroundColor)
        .cornerRadius(12)
        .shadow(radius: 14)
        
        
        
    }
}

struct Inits_Enums_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Inits_Enums(count: 20, fruit: .apple)
            Inits_Enums(count: 30, fruit: .orange)
            Inits_Enums(count: 40, fruit: .strowberry)
            Inits_Enums(count: 50, fruit: .pinaple)
        }
    }
}
