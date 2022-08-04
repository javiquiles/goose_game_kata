//
//  ThePrison.swift
//  GooseGame
//
//  Created by Javier Alejandro Quiles on 04/08/2022.
//

class ThePrison: Rule {
    var next: Rule?

    required init(next: Rule?) {
        self.next = next
    }
    
    func getDescription(space: Int) -> String? {
        if (50...55).contains(space) {
            return "The Prison: Wait until someone comes to release you - they then take your place"
        }
        
        return next?.getDescription(space: space)
    }
}
