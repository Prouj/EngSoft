//
//  NewGroupView.swift
//  Agenda
//
//  Created by Paulo Uchôa on 28/06/21.
//

import SwiftUI
import Combine

struct NewGroupView: View {
    
    @Environment(\.presentationMode) var viewContext
    @State var name: String = ""
//    @State public var contacts: [Contact] = []
    @State private var showingAlert = false
    @State private var showingModal = false
    
    
//    var contacts: [Contact] = [ContactViewModel().create(name: "TESTE", email: "teste@gmail.com", cep: "8888", numberOne: "000000", numberTwo: "0000")]
    
    
    let onSave = PassthroughSubject<Void, Never>()
    let onCancel = PassthroughSubject<Void, Never>()
    
    var body: some View {
            VStack {
                VStack {
                    HStack {
                        Text("Nome ")
                            .font(.system(size: 20, weight: .medium))
        //                    .foregroundColor(.colorFont2)
                            .padding(.vertical, 10)
                            .padding(.leading, 20)
                        Spacer()
                    }
                    HStack {
                        TextField("Nome", text: $name)
        //                    .foregroundColor(.fontCreatePlant)
        //                    .accentColor(.fontCreatePlant)
                            .onReceive(Just(name)) { _ in if name.count > 30 {
                                name = String(name.prefix(30))
                            }}
                            .padding(.leading, 7)
                            .padding(.horizontal, 5)
        //                    .background(Color.gray3)
                            .background(Color(red: 0, green: 0, blue: 0, opacity: 0.1))
                            .cornerRadius(20)
                    }.padding(.horizontal, 20)
              
                    Button(action: {
                        showingModal = true
                        
                    }) {
                        Text("Adicionar Contatos")
                            .padding(.trailing, 20)
                            .padding(.top, 30)
                            .sheet(isPresented: $showingModal, onDismiss: {showingModal = false} ,content: {
                                AddContactInGroup(showingModal: $showingModal, name: name)
                            })
                    }
                   
                    
                    
                }.foregroundColor(.black)
                Spacer()
            }
        .navigationBarTitle("Novo contato", displayMode: .inline)
        .navigationBarItems(trailing: trailingButton)
    }


    var trailingButton: some View {
        Button("Salvar") {
            if name.count > 0 {
//                self.presentationMode.wrappedValue.dismiss()
//                GroupViewModel().create(name: name, contacts: [ContactViewModel().create(name: "TESTE", email: "teste@gmail.com", cep: "8888", numberOne: "000000", numberTwo: "0000")])
//                GroupViewModel().create(name: name, contacts: contacts)
                
            } else {
                showingAlert = true
            }
        }
//        .foregroundColor(.fontCreatePlant)
        .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Olá"), message: Text("Parece que você esqueceu de dar um nome ao contato."), dismissButton: .default(Text("OK")))
                }
    }
    
//    func selectedContacts(contacts: [Contact]) {
//        self.contacts = contacts
//    }
}

//struct NewGroupView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewGroupView()
//    }
//}

