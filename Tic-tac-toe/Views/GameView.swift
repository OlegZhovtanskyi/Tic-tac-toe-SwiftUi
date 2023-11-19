//
//  GameView.swift
//  Tic-tac-toe
//
//  Created by Oleg Zhovtanskyi on 12/11/2023.
//

import SwiftUI

struct GameView: View {
    @StateObject private var viewModel = GameViewModel()

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                LinearGradient(colors: [Color("CoolRed"), Color("DarkBlack")], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    LazyVGrid(columns: viewModel.columns, spacing: 5) {
                        ForEach(0..<9) { i in
                            ZStack {
                                GameSquareView(proxy: geometry)
                                PlayerIndicatior(systemImageName: viewModel.moves[i]?.indicator ?? "")
                            }
                            .onTapGesture {
                                viewModel.processPlayerMove(for: i)
                            }
                        }
                    }
                    Spacer()
                }
                .navigationBarBackButtonHidden(true)
                .disabled(viewModel.isGameBoardDisable)
                .padding()
                .alert(item: $viewModel.alertItem) { alertItem in
                    Alert(title: alertItem.title,
                          message: alertItem.message,
                          dismissButton: .default(alertItem.buttonTitle) {
                        viewModel.resetGame()
                    })
                }
            }
        }
    }
}


#Preview {
    GameView()
}
