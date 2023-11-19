//
//  Alerts.swift
//  Tic-tac-toe
//
//  Created by Oleg Zhovtanskyi on 13/11/2023.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    var title: Text
    var message: Text
    var buttonTitle: Text
}


struct AlertContext {
    static let humanWin = AlertItem(title: Text("Congratulation 🎉 , You win"),
                             message: Text("You are smarter than computer. You beat AI"),
                             buttonTitle: Text("Hell yeah"))
    
    static let computerWIn = AlertItem(title: Text("You lose 😔"),
                                message: Text("Computer win"),
                                buttonTitle: Text("Try again"))
    
    static let draw =        AlertItem(title: Text("Draw"),
                                message: Text("It's a good battle"),
                                buttonTitle: Text("Rematch"))
}
