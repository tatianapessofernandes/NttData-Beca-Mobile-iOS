//
//  DefinicoesView.swift
//  ListaFilmes
//
//  Created by Tatiana Pessoa Fernandes on 14/02/22.
//

import SwiftUI

struct DefinicoesView: View {
    
    @Binding var apresentacao: Bool
    
    @State private var selecao = 1
    @State private var email = ""
    
    var body: some View {
        NavigationView {
            Form {
                Picker(selection: $selecao, label: Text("Genero Favorito")) {
                    Text("Ação").tag(1)
                    Text("Comédia").tag(2)
                    Text("Terror").tag(3)
                    Text("Ficção").tag(4)
                    Text("Romance").tag(5)
                }
                
                Section(header: Text("Email")) {
                    TextField("Email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                Button(action: {
                    apresentacao.toggle()
                }) {
                    Text("Salvar")
                }
            }.navigationTitle("Settings")
        }
    }
}

struct DefinicoesView_Previews: PreviewProvider {
    static var previews: some View {
        DefinicoesView(apresentacao: Binding<Bool>.constant(false))
    }
}
