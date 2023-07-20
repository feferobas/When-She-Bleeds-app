//
//  InformationPage.swift
//  quizApp
//
//  Created by Laiba Jalil on 7/20/23.
//

import SwiftUI

struct informationPortView: View {
    @State private var showAnimatedText = false

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(hue: 0.029, saturation: 0.379, brightness: 0.856, opacity: 0.652))
                .ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("O que é Menstruação?")
                        .font(.custom("Chewy", size: 32))
                        .bold()
                        .foregroundColor(Color(hue: 1.0, saturation: 0.977, brightness: 0.906, opacity: 0.652))

                    Text("A menstruação, também conhecida como o ciclo menstrual ou o período, é um processo biológico natural que ocorre com a maioria das mulheres em idade reprodutiva. Isso envolve o descascamento do revestimento uterino, resultando no sangramento vaginal, que normalmente dura por alguns dias a cada mês. A menstruação é um aspecto crucial para a saúde reprodutiva da mulher e é crucial para uma possível gravidez.")
                        .foregroundColor(.black)

                   // Image("Period Poverty")
                   //     .resizable()
                    //    .aspectRatio(contentMode: .fit)
                    //    .padding(.horizontal)

                    Text("O que é Pobreza Menstrual?")
                        .font(.custom("Chewy", size: 32))
                        .bold()
                        .foregroundColor(Color(hue: 1.0, saturation: 0.977, brightness: 0.906, opacity: 0.652))

                    Text("Pobreza menstrual, infelizmente, é um problema espalhado ao redor do mundo que se refere à falta de acesso à higiene menstrual essencial, instalações sanitárias adequadas e informações precisas sobre saúde menstrual. Esse problema afeta milhões de mulheres e garotas ao redor do mundo, especialmente aquelas que vivem em comunidades precárias e populações marginalizadas. Devido ao desafios financeiros, muitos indivíduos têm dificuldade em custear ou acessar itens como absorventes sanitários, absorventes internos ou copos menstruais, cujos produtos são cruciais para gerenciar uma menstruação higiênica. Como resultado, algumas recorrem a práticas não higiênicas e inseguras durante o período delas, nas quais podem ser prejudiciais à sua saúde e bem-estar.")
                        .foregroundColor(.black)

                    if showAnimatedText {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("O TABU")
                                .font(.custom("Chewy", size: 40))
                                .bold()
                                .foregroundColor(Color(hue: 1.0, saturation: 0.977, brightness: 0.906))
                            Text("Normalmente, a menstruação é vista como um tópico a ser evitado é algo nojento. Contudo, 100% da população precisa que as mulheres menstruem.")
                                .foregroundColor(.black)
                            Text("MAS, VOCÊ SABIA?")
                                .font(.custom("Chewy", size: 32))
                                .bold()
                                .foregroundColor(Color(hue: 1.0, saturation: 0.977, brightness: 0.906))
                            Text("R$8 000 é o custo estimado para produtos menstruais ao longo da vida (assumindo que o período médio de menstruação é de 36 anos)")
                                .foregroundColor(.black)
                            Text("8 entre 10 mulheres já usaram outros itens ao invés de absorventes, por exemplo panos velhos,  roupas, pão e produtos não higiênicos- colocando a saúde em risco.")
                                .foregroundColor(.black)
                            Text("OS EFEITOS NA EDUCAÇÃO")
                                .font(.custom("Chewy", size: 32))
                                .bold()
                                .foregroundColor(Color(hue: 1.0, saturation: 0.977, brightness: 0.906))
                            Text("3 meses de escola perdidos por ano")
                                .foregroundColor(.black)
                            Text("1 entre 4 estudantes têm dificuldade em custear produtos menstruais")
                                .foregroundColor(.black)
                            Text("No Brasil, 62% das meninas já faltaram na escola")
                                .foregroundColor(.black)
                            Text("5.5 milhões de mulheres já faltaram no trabalho por conta da pobreza menstrual")
                                .foregroundColor(.black)
                        }
                        .padding()
                        .transition(.opacity)
                        .animation(.easeInOut(duration: 0.5))
                    }
                }
                .padding()
            }
        }
        .onAppear {
            showAnimatedText = true
        }
    }
}

struct informationPortView_Previews: PreviewProvider {
    static var previews: some View {
        informationPortView()
    }
}




