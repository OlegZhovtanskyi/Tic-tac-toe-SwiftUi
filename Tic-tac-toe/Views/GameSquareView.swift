//
//  GameSquareView.swift
//  Tic-tac-toe
//
//  Created by Oleg Zhovtanskyi on 19/11/2023.
//

import SwiftUI

struct GameSquareView: View {
    var proxy: GeometryProxy
    
    var body: some View {
        Circle()
            .foregroundStyle(Color("LightWhite"))
            .padding(.horizontal, 5)
            .frame(width: proxy.size.width/3,
                   height: proxy.size.width/3)
    }
}
