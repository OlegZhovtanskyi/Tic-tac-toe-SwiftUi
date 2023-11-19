//
//  SquareView.swift
//  Tic-tac-toe
//
//  Created by Oleg Zhovtanskyi on 12/11/2023.
//

import SwiftUI

struct SquareView: View {
    @State private var squareText: String? = nil
    var body: some View {
        ZStack {
          Circle()
                .foregroundStyle(/*@START_MENU_TOKEN@*/SecondaryContentStyle()/*@END_MENU_TOKEN@*/)
        }
    }

}

#Preview {
    SquareView()
}
