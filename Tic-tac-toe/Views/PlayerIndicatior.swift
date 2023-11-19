//
//  PlayerIndicatior.swift
//  Tic-tac-toe
//
//  Created by Oleg Zhovtanskyi on 19/11/2023.
//

import SwiftUI

struct PlayerIndicatior: View {
    var systemImageName: String
    
    var body: some View {
        Image(systemName: systemImageName)
            .resizable()
            .foregroundStyle(Color("DarkBlack"))
            .frame(width: 70, height: 70)
    }
}
