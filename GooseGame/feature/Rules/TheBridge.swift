//
//  TheBridge.swift
//  GooseGame
//
//  Created by Javier Alejandro Quiles on 03/08/2022.
//

class TheBridge: Rule {
    var next: Rule?
    
    required init(next: Rule?) {
        self.next = next
    }
    
    func handle(space: Int) -> String? {
        if space == 6 {
            return "The Bridge: Go to space 12"
        }
        
        return next?.handle(space: space)
    }
}
