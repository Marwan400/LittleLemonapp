//
//  Onboarding.swift
//  LittleLemon
//
//  Created by Marwan Al.Jabri on 12/11/1445 AH.
//

import SwiftUI

let kFirstName = "first name key"
let klastName = "last name key"
let kemail = "email key"

struct Onboarding: View {
    
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State var isLoggedIn = false
    
    var body: some View {
        
        NavigationView {
            
            VStack{
                
                NavigationLink (destination: Home(),isActive: $isLoggedIn) {
                    
                }
                EmptyView()
                
                TextField("Enter your First Name ", text: $firstName)
                TextField("Enter your Last Name ", text: $lastName)
                TextField("Enter your email ", text: $email)
                
                Button("Register"){
                    if !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty {
                        
                        UserDefaults.standard.set(firstName, forKey: kFirstName)
                        UserDefaults.standard.set(lastName, forKey: klastName)
                        UserDefaults.standard.set(email, forKey: kemail)
                        
                        isLoggedIn = true
                    }
                }

            }
        }
        
    }
}

#Preview {
    Onboarding()
}
