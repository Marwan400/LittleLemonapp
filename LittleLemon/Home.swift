//
//  Home.swift
//  LittleLemon
//
//  Created by Marwan Al.Jabri on 13/11/1445 AH.
//

import SwiftUI


struct Home: View {
    var body: some View {
        TabView {
          Menu()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
                .navigationBarBackButtonHidden(true)
            UserProfile()
                .tabItem {
                    Label("Profile", systemImage: "square.and.pencil")
                }
        }
    }
}

#Preview {
    Home()
}
