//
//  TheHotel.swift
//  GooseGame
//
//  Created by Javier Alejandro Quiles on 04/08/2022.
//

class TheHotel: Rule {
    var next: Rule?

    required init(next: Rule?) {
        self.next = next
    }
    
    func getDescription(space: Int) -> String? {
        if space == 19 {
            return "The Hotel: Stay for (miss) one turn"
        }
        
        return next?.getDescription(space: space)
    }
}
