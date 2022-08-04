//
//  StayInSpace.swift
//  GooseGame
//
//  Created by Javier Alejandro Quiles on 02/08/2022.
//

class StayInSpace: Rule {
    var next: Rule?

    required init(next: Rule?) {
        self.next = next
    }
    
    func getDescription(space: Int) -> String? {
       "Stay in space \(space)"
    }
}
