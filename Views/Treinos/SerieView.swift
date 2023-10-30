//
//  SerieView.swift
//  NovoPrograssaoDeCarga
//
//  Created by Ricardo de Agostini Neto on 20/10/23.
//

import SwiftUI

struct SerieView: View {
    
    @Binding var serie: SerieModel

    var body: some View {
        HStack {
            
            Spacer()
                
            TextField("Peso", text: $serie.peso)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 60)
            Text("Kg")
                    Spacer()
            TextField("Reps", text: $serie.repeticoes)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 60)
            
            Spacer()
        }
    }
}


