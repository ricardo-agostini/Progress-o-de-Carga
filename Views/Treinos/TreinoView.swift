//
//  TreinoView.swift
//  NovoPrograssaoDeCarga
//
//  Created by Ricardo de Agostini Neto on 20/10/23.
//

import SwiftUI

struct TreinoView: View {
    
    @Binding var treino: TreinoModel
    @Binding var finalTreino: TodosTreinosModel
    
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        

        ScrollView {
            
            //            if treino.exercicios[0].nomeExercicio == "" {
            //
            //
            //                VStack {
            //                    Text("Você não adicionou nenhum Exercício ainda")
            //
            //                    Rectangle()
            //                        .frame(width: 358, height: 45)
            //                        .foregroundColor(.white)
            //                        .cornerRadius(8)
            //                        .overlay(
            //                            GeometryReader { geometry in
            //                                VStack{
            //                                    TextField("Escreva o nome do seu treino", text: $treino.nomeDoTreino)
            //                                        .frame(height: 36)
            //                                        .offset(x: 16, y: 5)
            //                                        .submitLabel(.done)
            //                                }
            //                            }
            //                        )
            //
            //                    Button(action: {
            //                        adicionarExercicio()
            //                    }) {
            //                        Text("Adicionar Exercício")
            //                    }
            //
            //
            //
            //                    Button(action: {
            //                        removerExercicio()
            //                    }) {
            //                        Text("Remover Exercício")
            //                    }
            //
            //
            //                }.padding()
            //
            //        }
            
            //     else {
            
            VStack {
                
                Rectangle()
                    .frame(width: 358, height: 45)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .overlay(
                        GeometryReader { geometry in
                            VStack{
                                TextField("Escreva o nome do seu treino", text: $treino.nomeDoTreino)
                                    .frame(height: 36)
                                    .offset(x: 16, y: 5)
                                    .submitLabel(.done)
                            }
                        }
                    )
                
                
                
                ForEach(0..<treino.exercicios.count, id: \.self) { indexExercicio in
                    
                    ExercicioView(exercicio: $treino.exercicios[indexExercicio])
                    
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
//        treino.exercicios.popLast()
//        treino.exercicios.append(ExercicioModel(nomeExercicio: "", series: [SerieModel(repeticoes: "", peso: "")]))
        
    }





}


