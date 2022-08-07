//
//  TheDeath.swift
//  GooseGame
//
//  Created by Javier Alejandro Quiles on 07/08/2022.
//

class TheDeath: Rule {
    var next: Rule?

    required init(next: Rule?) {
        self.next = next
    }
    
    func getDescription(space: Int) -> String? {
        if space == 58 {
            return "Death: Return your piece to the beginning - start the game again"
        }
        
        return next?.getDescription(space: space)
    }
}
