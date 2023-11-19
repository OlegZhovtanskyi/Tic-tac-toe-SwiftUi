//
//  PresentView.swift
//  Tic-tac-toe
//
//  Created by Oleg Zhovtanskyi on 12/11/2023.
//

import SwiftUI

struct PresentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Background
                LinearGradient(colors: [Color("SkyBlue"), Color("DarkBlack")], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                // Foreground
                NavigationLink {
                    GameView()
                } label: {
                    HStack {
                        Image(systemName: "gamecontroller.fill")
                            .font(.title2)
                        Text("Let's Play")
                            .font(.system(size: 23))
                            .fontWeight(.black)
                    }
                    .foregroundStyle(Color("LightWhite"))
                    .frame(width: 200, height: 60)
                    .background(LinearGradient(colors: [Color("CoolRed"), Color("SunYellow")], startPoint: .leading, endPoint: .trailing))
                    .clipShape(.rect(cornerRadius: 20))
                }
            }
        }
    }
}

#Preview {
    PresentView()
}
