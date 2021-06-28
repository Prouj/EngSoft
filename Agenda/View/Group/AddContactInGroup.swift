//
//  AddContactInGroup.swift
//  Agenda
//
//  Created by Paulo Uchôa on 28/06/21.
//

import SwiftUI

struct AddContactInGroup: View {
    @State var searchText: String = ""
    @State var checked: Bool = false
    @Binding var showingModal: Bool
    
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(entity: Contact.entity(), sortDescriptors: [])
        
    public var contact: FetchedResults<Contact>
    @ObservedObject private var contactViewModel: ContactViewModel = ContactViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .top) {
                    VStack {
                        if !contact.isEmpty {
                            SearchBar(text: $searchText)
                                .padding(.vertical, 10)
                            List {
                                ForEach(contact.filter({searchText.isEmpty ? true : $0.name!.contains(searchText) })) { item in
                                    
                                    HStack {
                                        
                                        Image(systemName: checked ? "checkmark.square.fill" : "square")
                                            .foregroundColor(checked ? Color(UIColor.systemBlue) : Color.secondary)
                                            .frame(minWidth: 25, idealWidth: 25, maxWidth: 25, minHeight: 15, idealHeight: 15, maxHeight: 15)
                                            .padding(.leading, 5)
                                            .onTapGesture {
                                                self.checked.toggle()
                                            }
                                        
                                        Text(item.name ?? "no name")
                                        Text(item.cep ?? "no cep")
                                        
                                        
                                    }
                                    
                                    
                                }
                            }
                        } else {
                            HStack {
                                VStack(alignment: .center) {
                                    Spacer()
                                    Text("Adicione um novo Contato")
                                    .fontWeight(.regular)
                                    .font(.system(size: 15))
                                    Spacer()
                                }
                            }

                            
                        }
                    }
                }
            }
            .navigationTitle("Contatos")
               
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                                Button(action: {
                                    showingModal = false

                                }) {
                                    Text("OK")
                                        .padding(.trailing, 20)
                                        .padding(.top, 30)
                                }
                }
            }

        }

    }
}

//struct AddContactInGroup_Previews: PreviewProvider {
//    static var previews: some View {
//        AddContactInGroup()
//    }
//}
