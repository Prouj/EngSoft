//
//  ContactsInGroupView.swift
//  Agenda
//
//  Created by Paulo Uchôa on 28/06/21.
//

import SwiftUI

struct ContactsInGroupView: View {
    @State var searchText: String = ""
    
    @State var group: Group
    @ObservedObject private var groupViewModel: GroupViewModel = GroupViewModel()
    
    var body: some View {
//        NavigationView {
                ZStack(alignment: .top) {
                    VStack {
                        VStack {
                            if !group.contactArray.isEmpty {
                                SearchBar(text: $searchText)
                                    .padding(.vertical, 10)
                                List {
                                    ForEach(group.contactArray.filter({searchText.isEmpty ? true : $0.name!.contains(searchText) })) { item in
                                        
                                        NavigationLink(destination: ContactInfoView(contact: item)) {
                                            HStack {
                                                Text(item.name ?? "no name")
                                            }
                                        }
                                        
                                    }.onDelete(perform: { indexSet in
                                        indexSet.forEach { index in
                                            let contact = group.contactArray[index]
                                            GroupViewModel().deleteContactInGroup(contact: contact, group: group)
                                               
                                        }
                                    })
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
                }.navigationTitle(group.name!)
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: EditGroupView(group: group, name: group.name!)) {
                        Text("Editar")
                    }
                }
            }
//        }
    }
}

//struct ContactsInGroupView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContactsInGroupView()
//    }
//}
