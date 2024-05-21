//
//  UserProfile.swift
//  LittleLemon
//
//  Created by Marwan Al.Jabri on 13/11/1445 AH.
//

import SwiftUI

struct UserProfile: View {
    var body: some View {
        VStack{
            Text("Personal information")
        }
        Image("profile-image-placeholder ")
            .resizable()
            .frame(width: 200 , height: 200)
    }
}

#Preview {
    UserProfile()
}
