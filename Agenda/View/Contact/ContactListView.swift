//
//  ContactListView.swift
//  Agenda
//
//  Created by Paulo Uchôa on 28/06/21.
//

import SwiftUI

struct ContactListView: View {
    @State var searchText: String = ""
    @State var selectedIndex = 0
    
    
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(entity: Contact.entity(), sortDescriptors: [])

    public var contact: FetchedResults<Contact>

    @ObservedObject private var contactViewModel: ContactViewModel = ContactViewModel()
    
    init() {
        UITabBar.appearance().barTintColor = .systemBackground
    }
    
    let tabBarImage = ["person.fill", "person.2.fill"]
    
    var body: some View {
        
        VStack {
            ZStack {
                switch selectedIndex {
                case 0:
                    NavigationView {
                        VStack {
                            ZStack(alignment: .top) {
                                VStack {
                                    if !contact.isEmpty {
                                        SearchBar(text: $searchText)
                                            .padding(.vertical, 10)
                                        List {
                                            ForEach(contact.filter({searchText.isEmpty ? true : $0.name!.contains(searchText) })) { item in
                                                NavigationLink(destination: ContactInfoView(contact: item)) {
                                                    HStack {
                                                        Text(item.name ?? "no name")
                                                        
                                                    }
                                                }
                                                
                                            }.onDelete(perform: { indexSet in
                                                indexSet.forEach { index in
                                                    let contact = contact[index]
                                                    ContactViewModel().delete(contact: contact)
                                                }
                                            })
                                        }
                                    } else {
                                        HStack {
                                            VStack(alignment: .center) {
                                                Spacer()
                                                Text("Adicione um novo Contato clicando em +")
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
//                                Button(action: {
//                                    showingModal = true
//
//                                }) {
//                                    Image(systemName: "plus")
//                                        .padding(.trailing, 20)
//                                        .padding(.top, 30)
//                                        .sheet(isPresented: $showingModal, onDismiss: {showingModal = false} ,content: {
//                                            NewContactView(showingModal: $showingModal)
//                                })
//                                }
                                NavigationLink(destination: NewContactView()) {
                                    Image(systemName: "plus")
                                        .padding(.trailing, 20)
                                        .padding(.top, 30)
                                }
                            }
                        }

                    }

                case 1:
                    GroupListView()
                default:
                    Text("Oh NO")
                }
            }
            Spacer()
            HStack {
                ForEach(0..<2) { num in
                    Button(action: {
                        selectedIndex = num
                    }, label: {
                        Spacer()
                        
                            Image(systemName: tabBarImage[num])
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(selectedIndex == num ? Color(.black) : .init(white: 0.8))
                    
                        
                        
                        Spacer()
                    })
                }
            }
        }
//        .onAppear() {
//            contact = ContactViewModel().fetch()
//        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}



    
    
  
    
  
    
    


