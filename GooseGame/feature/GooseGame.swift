//
//  GooseGame.swift
//  GooseGame
//
//  Created by Javier Alejandro Quiles on 02/08/2022.
//

class GooseGame {
    func getRuleDescriptionBy(space: Int) -> String {
        let rule = RulesFactory.createFirstRule()
        return rule.getDescription(space: space) ?? ""
    }
}
