//
//  GooseGame.swift
//  GooseGame
//
//  Created by Javier Alejandro Quiles on 02/08/2022.
//

class GooseGame {
    func getRuleBy(space: Int) -> String {
        let rule = RulesFactory.create()
        return rule.handle(space: space) ?? ""
    }
}
