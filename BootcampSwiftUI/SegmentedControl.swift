//
//  SegmentedControl.swift
//  BootcampSwiftUI
//
//  Created by marco rodriguez on 21/06/22.
//

import SwiftUI

struct SegmentedControl: View {
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .selected)
    }
    
    @State private var selectedSide: SideOfTheForce = .light
    
    var body: some View {
        NavigationView {
            VStack {
                Picker("Choose a side", selection: $selectedSide) {
                    ForEach(SideOfTheForce.allCases, id: \.self){
                        Text($0.rawValue) //Cada valor
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                Spacer()
                ChosenHeroView(selectedSide: selectedSide)
                Spacer()
            }
            .navigationTitle("Choose a Side")
        }
    }
}

enum SideOfTheForce: String, CaseIterable {
    case light = "Light"
    case grey = "Grey"
    case dark = "Dark"
}

struct ChosenHeroView: View {
    var selectedSide: SideOfTheForce
    
    var body: some View {
        switch selectedSide {
        case .light:
            HeroImageView(heroName: "sw1")
        case .grey:
            HeroImageView(heroName: "sw2")
        case .dark:
            HeroImageView(heroName: "sw3")
        }
    }
}

struct HeroImageView: View {
    var heroName: String
    var body: some View {
        Image(heroName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .shadow(radius: 10)
            .cornerRadius(30)
            .clipShape(Circle())
            .frame(width: 260, height: 260, alignment: .center)
            .shadow(color: .white, radius: 100, x: 0, y: 0)
    }
}

struct SegmentedControl_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControl()
            .preferredColorScheme(.dark)
    }
}
