////
////  IniciarTreinoView.swift
////  NovoPrograssaoDeCarga
////
////  Created by Ricardo de Agostini Neto on 23/10/23.
//

import SwiftUI

struct IniciarTreinoView: View {
    
    @Binding var treino: TreinoModel
    
    var body: some View {
        
        if treino.nomeDoTreino == ""{
            
        }
        
        else {
            
            Rectangle()
                .frame(width: 358, height: 137)
                .foregroundColor(.white)
                .cornerRadius(8)
                .overlay(
                    GeometryReader { geometry in
                        VStack(spacing: 16){

                            HStack {
                                Text(treino.nomeDoTreino)
                                    .bold()
                                Spacer()
                            }
                            
                            HStack {
                                ForEach(0..<treino.exercicios.count, id: \.self) { indexExercicios in
                                    
                                    
                                    HStack {
                                        Text(treino.exercicios[indexExercicios].nomeExercicio)
                                            .lineLimit(2)
                                            .truncationMode(.tail)
                                        Spacer()
                                    }
                                    
                                }
                            }
                            
                            HStack {
                                
                                Button(action: {
                                    TreinoAtualView(treino: <#T##Binding<TreinoModel>#>, finalTreino: <#T##Binding<TodosTreinosModel>#>)
                                    //Aqui, eu teria que passar ultimoTreino e atualTreino
                                    
                                }) {
                                    Text("Iniciar Treino") // Texto exibido no botão
                                        .frame(width: 336, height: 34)
                                        .foregroundColor(.white) // Cor do texto
                                        .background(Color.blue) // Cor de fundo
                                        .cornerRadius(10) // Raio de arredondamento das bordas
                                }
                                
                                
                            }
                        }
                    }
                )
        }
    }
}


