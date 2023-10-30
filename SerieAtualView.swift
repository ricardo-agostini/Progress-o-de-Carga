//
//  SerieAtualView.swift
//  NovoPrograssaoDeCarga
//
//  Created by Ricardo de Agostini Neto on 25/10/23.
//

import SwiftUI

struct SerieAtualView: View {
    
    
    @Binding var serieAntiga: SerieModel
    @Binding var serieAtual: SerieModel


    var body: some View {
        HStack {
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 8)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 60)
                .foregroundColor(.gray)
                .overlay(Text(serieAntiga.peso +  serieAntiga.repeticoes))
                
            TextField("Peso", text: $serieAtual.peso)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 60)
            Text("Kg")
                    Spacer()
            TextField("Reps", text: $serieAtual.repeticoes)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 60)
            
            Spacer()
        }
    }
}
