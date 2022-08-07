//
//  RulesFactory.swift
//  GooseGame
//
//  Created by Javier Alejandro Quiles on 03/08/2022.
//

class RulesFactory {
    static func createFirstRule() -> Rule {
        let stayInSpace = StayInSpace(next: nil)
        let multipleSix = MultipleSix(next: stayInSpace)
        let thePrison = ThePrison(next: multipleSix)
        let theBridge = TheBridge(next: thePrison)
        let theHotel = TheHotel(next: theBridge)
        let theWell = TheWell(next: theHotel)
        let theMaze = TheMaze(next: theWell)
        let theDeath = TheDeath(next: theMaze)
        let theFinish = TheFinish(next: theDeath)
        
        return GoBackToPrison(next: theFinish)
    }
}
