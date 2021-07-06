//
//  NewContactView.swift
//  Agenda
//
//  Created by Paulo Uchôa on 28/06/21.
//

import SwiftUI
import Combine

struct NewContactView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var name: String = ""
    @State var email: String = ""
    @State var cep: String = ""
    @State var numberOne: String = ""
    @State var numberTwo: String = ""
    @State private var showingAlert = false
    
    let onSave = PassthroughSubject<Void, Never>()
    let onCancel = PassthroughSubject<Void, Never>()
    
    var body: some View {
            VStack {
                VStack {
                    HStack {
                        Text("Nome")
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
                    
                    HStack {
                        Text("Email")
                            .font(.system(size: 20, weight: .medium))
        //                    .foregroundColor(.colorFont2)
                            .padding(.vertical, 10)
                            .padding(.leading, 20)
                        Spacer()
                    }
                    HStack {
                        TextField("contato@***mail.com", text: $email)
        //                    .foregroundColor(.fontCreatePlant)
        //                    .accentColor(.fontCreatePlant)
                            .onReceive(Just(email)) { _ in if email.count > 30 {
                                email = String(email.prefix(30))
                            }}
                            .padding(.leading, 7)
                            .padding(.horizontal, 5)
        //                    .background(Color.gray3)
                            .background(Color(red: 0, green: 0, blue: 0, opacity: 0.1))
                            .cornerRadius(20)
                    }.padding(.horizontal, 20)
                    
                    HStack {
                        Text("CEP")
                            .font(.system(size: 20, weight: .medium))
        //                    .foregroundColor(.colorFont2)
                            .padding(.vertical, 10)
                            .padding(.leading, 20)
                        Spacer()
                    }
                    HStack {
                        TextField("000.000.000-00", text: $cep)
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
        //
                    HStack {
                        Text("Número 1")
                            .font(.system(size: 20, weight: .medium))
        //                    .foregroundColor(.colorFont2)
                            .padding(.vertical, 10)
                            .padding(.leading, 20)
                        Spacer()
                    }
                    HStack {
                        TextField("Número", text: $numberOne)
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
                    
                    HStack {
                        Text("Número 2")
                            .font(.system(size: 20, weight: .medium))
        //                    .foregroundColor(.colorFont2)
                            .padding(.vertical, 10)
                            .padding(.leading, 20)
                        Spacer()
                    }
                    HStack {
                        TextField("Número", text: $numberTwo)
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
                    
                    
                }.foregroundColor(.black)
                Spacer()
            }
        .navigationBarTitle("Novo contato", displayMode: .inline)
        .navigationBarItems(trailing: trailingButton)
    }


    var trailingButton: some View {
        Button("Salvar") {
            if name.count > 0 {
                self.presentationMode.wrappedValue.dismiss()
                ContactViewModel().create(name: name, email: email, cep: cep, numberOne: numberOne, numberTwo: numberTwo)
                
            } else {
                showingAlert = true
            }
        }
//        .foregroundColor(.fontCreatePlant)
        .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Olá"), message: Text("Parece que você esqueceu de dar um nome ao contato."), dismissButton: .default(Text("OK")))
                }
    }
}



struct NewContact_Previews: PreviewProvider {
    static var previews: some View {
        NewContactView()
    }
}
