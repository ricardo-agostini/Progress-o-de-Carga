//
//  NovoPrograssaoDeCargaApp.swift
//  NovoPrograssaoDeCarga
//
//  Created by Ricardo de Agostini Neto on 20/10/23.
//

import SwiftUI

@main
struct NovoPrograssaoDeCargaApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                AtualTreinoView(treino: <#T##Binding<TreinoModel>#>, finalTreino: <#T##Binding<TodosTreinosModel>#>)
            }
        }
    }
}
