//
//  SearchBar.swift
//  Agenda
//
//  Created by Paulo Uchôa on 28/06/21.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            TextField("Pesquisar", text: $text)
//                .colorScheme(.light)
//                .foregroundColor(.black)
//                .accentColor(.black)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(red: 0, green: 0, blue: 0, opacity: 0.1))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
//                            .foregroundColor(.black)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                        if isEditing {
                            Button(action: {
                                self.text = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
//                                    .foregroundColor(.black)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .padding(.horizontal, 20)
                .onTapGesture {
                    self.isEditing = true
                }
            if isEditing {
                Button(action: {
                    UIApplication.shared.endEditing()
                    self.isEditing = false
                    self.text = ""
                }) {
                    Text("Cancelar")
//                        .foregroundColor(.black)
                }
                .padding(.trailing, 20)
                .transition(.move(edge: .trailing))
                .animation(.default)
            }
        }
    }
}

