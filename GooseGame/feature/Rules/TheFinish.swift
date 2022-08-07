//
//  TheFinish.swift
//  GooseGame
//
//  Created by Javier Alejandro Quiles on 07/08/2022.
//

class TheFinish: Rule {
    var next: Rule?

    required init(next: Rule?) {
        self.next = next
    }
    
    func getDescription(space: Int) -> String? {
        if space == 63 {
            return "Finish: you ended the game"
        }
        
        return next?.getDescription(space: space)
    }
}
