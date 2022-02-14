//
//  ContentView.swift
//  ListaFilmes
//
//  Created by Tatiana Pessoa Fernandes on 14/02/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var mostrarDefinicoes = false
    
    var body: some View {
        NavigationView {
            Group {
               HomeTableView()
            }.navigationBarTitle("Filmes", displayMode: .automatic)
            .navigationBarItems(trailing: HStack {
                    definicoesButton
            })
            .sheet(isPresented: $mostrarDefinicoes, content: {
                DefinicoesView(apresentacao: $mostrarDefinicoes)
            })
        }
    }
    
    private var definicoesButton: some View {
        Button(action: {
            mostrarDefinicoes.toggle()
        }, label: {
            HStack {
                Image(systemName: "gear")
                    .imageScale(.large)
                    .foregroundColor(.cyan)
            }.frame(width: 35, height: 35)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
