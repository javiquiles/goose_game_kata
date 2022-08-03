//
//  MultipleSix.swift
//  GooseGame
//
//  Created by Javier Alejandro Quiles on 02/08/2022.
//

class MultipleSix: Rule {
    var next: Rule?

    required init(next: Rule?) {
        self.next = next
    }
    
    func handle(space: Int) -> String? {
        if space % 6 == 0 {
            return "Move two spaces forward"
        }
        
        return next?.handle(space: space)
    }
}
