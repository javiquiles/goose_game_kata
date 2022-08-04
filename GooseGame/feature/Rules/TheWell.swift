//
//  TheWell.swift
//  GooseGame
//
//  Created by Javier Alejandro Quiles on 04/08/2022.
//

class TheWell: Rule {
    var next: Rule?

    required init(next: Rule?) {
        self.next = next
    }
    
    func getDescription(space: Int) -> String? {
        if space == 31 {
            return "The Well: Wait until someone comes to pull you out - they then take your place"
        }
        
        return next?.getDescription(space: space)
    }
}
