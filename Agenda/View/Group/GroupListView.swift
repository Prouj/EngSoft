//
//  GroupListView.swift
//  Agenda
//
//  Created by Paulo Uchôa on 28/06/21.
//

import SwiftUI

struct GroupListView: View {
    @State var searchText: String = ""
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(entity: Group.entity(), sortDescriptors: [])
        
    public var group: FetchedResults<Group>
    @ObservedObject private var groupViewModel: GroupViewModel = GroupViewModel()
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                VStack {
                    VStack {
                            if !group.isEmpty {
                                SearchBar(text: $searchText)
                                    .padding(.bottom, 10)
                                List {
                                    ForEach(group.filter({searchText.isEmpty ? true : $0.name!.contains(searchText) })) { item in
//                                        NavigationLink(destination: ContactsInGroupView(group: item)) {
                                            HStack {
                                                Text(item.name ?? "no name")
                                            }
//                                        }
                                        
                                    }.onDelete(perform: { indexSet in
                                        indexSet.forEach { index in
                                            let group = group[index]
                                            GroupViewModel().delete(group: group)
                                        }
                                    })
                                }
                            } else {
                                HStack {
                                    VStack(alignment: .center) {
                                        Spacer()
                                        Text("Adicione um novo Grupo clicando em +")
                                        .fontWeight(.regular)
                                        .font(.system(size: 15))
                                        Spacer()
                                    }
                                }

                            }
                    }

                }
            }
            .navigationTitle("Grupos")
               
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: NewGroupView()) {
                        Image(systemName: "plus")
                            .padding(.trailing, 20)
                            .padding(.top, 30)
                    }
                }
            }

        }

    }
    
    private func addContact() {
        let newContact = Group( context: viewContext)
        newContact.name = "Nsei"

        saveContext()
    }
    
    func saveContext() {
        do {
            try viewContext.save()
        } catch {
            let error = error as NSError
                fatalError("QUEBROU MERMÃO: \(error)")
        }
    }
}

struct GroupListView_Previews: PreviewProvider {
    static var previews: some View {
        GroupListView()
    }
}

