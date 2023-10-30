//
//  TodosTreinosView.swift
//  NovoPrograssaoDeCarga
//
//  Created by Ricardo de Agostini Neto on 20/10/23.
//

import SwiftUI

//nome do treino
//exercicio


struct TodosTreinosView: View {
    
    @State var todosTreinos: TodosTreinosModel = TodosTreinosModel(treinos: [TreinoModel(nomeDoTreino: "", exercicios: [ExercicioModel(nomeExercicio: "", series: [SerieModel(repeticoes: "", peso: "")])])])
    
    @State var finalTodosTreinos: TodosTreinosModel = TodosTreinosModel(treinos: [TreinoModel(nomeDoTreino: "", exercicios: [ExercicioModel(nomeExercicio: "", series: [SerieModel(repeticoes: "", peso: "")])])])
    
    //Uma variável para salvar o último treino de todos
    //uma variável para salvar o treino atual de todos
    //Uma variável para salvar absolutamente TODOS os treinos
    
    //Obs: nessa versao, o usuário não poderá adicionar uma série enquanto ele reliza o treino, para facilitar a verificação
    
    @State var utimoTreino: TodosTreinosModel = TodosTreinosModel(treinos: [TreinoModel(nomeDoTreino: "", exercicios: [ExercicioModel(nomeExercicio: "", series: [SerieModel(repeticoes: "", peso: "")])])])
    
    @State var atualTreino: TodosTreinosModel = TodosTreinosModel(treinos: [TreinoModel(nomeDoTreino: "", exercicios: [ExercicioModel(nomeExercicio: "", series: [SerieModel(repeticoes: "", peso: "")])])])
    
    
    //Vou colocar o 
    
    
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                VStack(spacing: 16) {
                    HStack {
                        Text("Treino")
                            .bold()
                            .font(.system(size: 22))
                        Spacer()
                    }
                    
                    
                    NavigationLink(destination: TreinoView(treino: $todosTreinos.treinos[0], finalTreino: $finalTodosTreinos)) {
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.blue)
                            .frame(width: 358, height: 50)
                            .overlay(
                                Text("Criar Novo Treino")
                                    .foregroundColor(.white)
                                    .bold()
                            )
                        
                        
                    }.simultaneousGesture(TapGesture().onEnded{
                        
                        todosTreinos = TodosTreinosModel(treinos: [TreinoModel(nomeDoTreino: "", exercicios: [ExercicioModel(nomeExercicio: "", series: [SerieModel(repeticoes: "", peso: "")])])])
                        
                    })
                    
                    Button(action: {
                        print(todosTreinos)
                    }) {
                        Text("printar temporario")
                        
                    }
                    
                    
                    Button(action: {
                        print(finalTodosTreinos)
                    }) {
                        Text("printar final")
                    }
                    
                    HStack {
                        Text("Meus Treinos")
                            .bold()
                            .font(.system(size: 22))
                        Spacer()
                    }
                    
                    ForEach(0..<finalTodosTreinos.treinos.count, id: \.self) { indexTreinos in
                        
                        IniciarTreinoView(treino: finalTodosTreinos.treinos[indexTreinos])
                        
                        //                Text(finalTodosTreinos.treinos[indexTreinos].nomeDoTreino)
                        //
                        //
                        //                ForEach(0..<finalTodosTreinos.treinos[indexTreinos].exercicios.count, id: \.self) { indexExercicios in
                        //
                        //                    Text(finalTodosTreinos.treinos[indexTreinos].exercicios[indexExercicios].nomeExercicio)
                        //
                        //                }
                    }
                    
                    
                }.padding()
            }
            .navigationTitle("Treinos")
            .background(Color.gray.opacity(0.2))
            
            
            
            
            
            
            
            
        }
        
        
    }
}
