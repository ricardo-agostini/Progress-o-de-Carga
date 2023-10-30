//
//  TreinoAtualView.swift
//  NovoPrograssaoDeCarga
//
//  Created by Ricardo de Agostini Neto on 25/10/23.
//

import SwiftUI

struct TreinoAtualView: View {
    
    @Binding var treinoAntigo: TreinoModel
    @Binding var treinoAtual: TreinoModel
    
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        

        ScrollView {
            
            VStack {
                
                Rectangle()
                    .frame(width: 358, height: 45)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .overlay(
                        GeometryReader { geometry in
                            VStack{
                                TextField("Escreva o nome do seu treino", text: $treinoAntigo.nomeDoTreino)
                                    .frame(height: 36)
                                    .offset(x: 16, y: 5)
                                    .submitLabel(.done)
                            }
                        }
                    )
                
                
                
                ForEach(0..<treinoAntigo.exercicios.count, id: \.self) { indexExercicio in
                    
                    ExercicioAtualView(exercicioAntigo: $treinoAntigo.exercicios[indexExercicio], exercicioAtual: $treinoAtual.exercicios[indexExercicio])
                    
                }
                
                Button(action: {
                    adicionarExercicio()
                }) {
                    Text("Adicionar Exercício")
                }
                
                
                
                Button(action: {
                    removerExercicio()
                }) {
                    Text("Remover Exercício")
                }
                
                Button(action: {
                    salvarTreino()
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Salvar Treino e voltar")
                }
                


                
                
            }
            .padding()
            
            //     }
            
        }.background(Color.gray.opacity(0.2))
    
        
        
    
    
}

func adicionarExercicio() {

    
    treino.exercicios.append(ExercicioModel(nomeExercicio: "", series: [SerieModel(repeticoes: "", peso: "")]))
}


func removerExercicio() {
    
    treino.exercicios.popLast()
    
}
    
    func salvarTreino() {
        finalTreino.treinos.append(treino)

        
    }





}


