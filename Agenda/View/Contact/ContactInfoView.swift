//
//  ContactInfoView.swift
//  Agenda
//
//  Created by Paulo Uchôa on 28/06/21.
//

import SwiftUI

struct ContactInfoView: View {
    
    @State var contact: Contact
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                
                Text("Número 1")
                    .font(.system(size: 20, weight: .semibold))
                    .padding(.bottom, 5)
                    .padding(.top, 10)
                
                Text(contact.numberOne ?? "Não há um número 1")
                    .font(.system(size: 17, weight: .regular))
                    .padding(.leading, 5)
                
                Text("Número 2")
                    .font(.system(size: 20, weight: .semibold))
                    .padding(.bottom, 5)
                    .padding(.top, 10)
                
                Text(contact.numberTwo ?? "Não há um número 2")
                    .font(.system(size: 17, weight: .regular))
                    .padding(.leading, 5)
                
                Text("Email")
                    .font(.system(size: 20, weight: .semibold))
                    .padding(.bottom, 5)
                    .padding(.top, 10)
                
                Text(contact.email ?? "Não há um email")
                    .font(.system(size: 17, weight: .regular))
                    .padding(.leading, 5)
                
                Text("CEP")
                    .font(.system(size: 20, weight: .semibold))
                    .padding(.bottom, 5)
                    .padding(.top, 10)
                
                Text(contact.cep ?? "Não há um CEP")
                    .font(.system(size: 17, weight: .regular))
                    .padding(.leading, 5)
                Spacer()
            }
            
            Spacer()
        }.navigationTitle(contact.name ?? "Sem nome")
        .padding(.leading, 20)
    }
}

//struct ContactInfoView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContactInfoView(contact: Contact)
//    }
//}
