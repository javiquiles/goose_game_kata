//
//  GoBackToPrison.swift
//  GooseGame
//
//  Created by Javier Alejandro Quiles on 07/08/2022.
//

class GoBackToPrison: Rule {
    var next: Rule?

    required init(next: Rule?) {
        self.next = next
    }
    
    func getDescription(space: Int) -> String? {
        if space > 63 {
            return "Move to space 53 and stay in prison for two turns"
        }

        return next?.getDescription(space: space)
    }
}
