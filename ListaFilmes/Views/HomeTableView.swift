//
//  HomeTableView.swift
//  ListaFilmes
//
//  Created by Tatiana Pessoa Fernandes on 14/02/22.
//

import SwiftUI

struct HomeTableView: View {
    
    enum Table: Int {
        case filme
        case descobrir
    }
    
    @State private var tabelaSelecionada = Table.filme
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct HomeTableView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTableView()
    }
}
