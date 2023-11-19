//
//  Custom.swift
//  Tic-tac-toe
//
//  Created by Oleg Zhovtanskyi on 12/11/2023.
//
import SwiftUI

struct TicTacToeImageView: View {
    var body: some View {
        VStack {
             ForEach(0..<3) { row in
                 HStack {
                     ForEach(0..<3) { column in
                         Rectangle()
                             .frame(width: 110, height: 130)
                             .border(Color.black, width: 1)
                     }
                 }
             }
         }
         .padding()
     }
}

#Preview {
    TicTacToeImageView()
}
