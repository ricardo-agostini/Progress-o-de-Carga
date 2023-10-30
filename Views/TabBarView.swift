//
//  TabBarView.swift
//  NovoPrograssaoDeCarga
//
//  Created by Ricardo de Agostini Neto on 24/10/23.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        
        TabView {
            TodosTreinosView()
                .tabItem{
                    Label("Treinos", systemImage: "dumbbell.fill")
                }
            
            ProgressoView()
                .tabItem{
                    Label("Progresso", systemImage: "chart.line.uptrend.xyaxis")
                }
            
            FrequenciaView()
                .tabItem{
                    Label("Frequência", systemImage: "clock.fill")
                }
          
        }
        
        
        
    }
}
