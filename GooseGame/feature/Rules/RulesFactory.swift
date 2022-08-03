//
//  RulesFactory.swift
//  GooseGame
//
//  Created by Javier Alejandro Quiles on 03/08/2022.
//

class RulesFactory {
    static func create() -> Rule {
        let stayInSpace = StayInSpace(next: nil)
        let multipleSix = MultipleSix(next: stayInSpace)
        
        return TheBridge(next: multipleSix)
    }
}
