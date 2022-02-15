//
//  HomeTableView.swift
//  ListaFilmes
//
//  Created by Tatiana Pessoa Fernandes on 14/02/22.
//

import SwiftUI

struct HomeTableView: View {
    
    enum Tab: Int {
        case filme
        case descubra
    }
    
    @State private var tabSelecionada = Tab.filme
    
    var body: some View {
        TabView(selection: $tabSelecionada) {
            FilmesView().tabItem {
                tabBarItem(text: "Filmes", image: "film")
            }.tag(Tab.filme)
            
            DescubraView().tabItem {
                tabBarItem(text: "Descubra", image: "square.stack")
            }.tag(Tab.descubra)
        }
    }
    
    private func tabBarItem(text: String, image: String) -> some View {
        VStack {
            Image(systemName: image)
                .imageScale(.large)
            
            Text(text)
        }
    }
}

struct HomeTableView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTableView()
    }
}
