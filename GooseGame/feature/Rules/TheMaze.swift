//
//  TheMaze.swift
//  GooseGame
//
//  Created by Javier Alejandro Quiles on 04/08/2022.
//

class TheMaze: Rule {
    var next: Rule?

    required init(next: Rule?) {
        self.next = next
    }
    
    func getDescription(space: Int) -> String? {
        if space == 42 {
            return "The Maze: Go back to space 39"
        }
        
        return next?.getDescription(space: space)
    }
}
