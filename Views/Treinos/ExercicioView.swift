//
//  ExercicioView.swift
//  NovoPrograssaoDeCarga
//
//  Created by Ricardo de Agostini Neto on 20/10/23.
//

import SwiftUI

struct ExercicioView: View {
    
    @Binding var exercicio: ExercicioModel
    
    
    var body: some View {
        
        VStack {
            
            TextField("Escreva o nome do Exercício", text: $exercicio.nomeExercicio)
                .frame(height: 30)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundColor(.white) // Cor e espessura da borda
                )

                          


            

            
            ForEach(0..<exercicio.series.count, id: \.self) { indexSerie in
                
                HStack {
                    
                    
                    Text("\(indexSerie + 1)ª série")
                    SerieView(serie: $exercicio.series[indexSerie])
                }
                
            }
            
            
            HStack {
                Button(action: {
                    addRow()
                }) {
                    Text("Adicionar Série")
                }
                
                Spacer()
                
                Button(action: {
                    removeRow()
                }) {
                    Text("Remover Série")
                }
                
                
            }
            
            
          
        }.padding()
    }
    
    func addRow() {
        exercicio.series.append(SerieModel(repeticoes: "0", peso: "0"))
        
    }
    
    func removeRow() {
        exercicio.series.popLast()
        
    }
    
}

