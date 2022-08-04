//
//  GooseGameTests.swift
//  GooseGameTests
//
//  Created by Javier Alejandro Quiles on 01/08/2022.
//

import XCTest
@testable import GooseGame

class GooseGameTests: XCTestCase {
    private var gooseGame: GooseGame!
    private var rule: String = ""
    
    func test_PrintStayInSpaceOne_WhenSpeceIs1() {
        givenAGooseGame()
        
        whenGetRule(space: 1)
        
        thenRuleIs("Stay in space 1")
    }
    
    func test_PrintStayInSpaceTwo_WhenSpeceIs2() {
        givenAGooseGame()
        
        whenGetRule(space: 2)
        
        thenRuleIs("Stay in space 2")
    }
    
    func test_PrintTheBridge_WhenSpaceIs6() {
        givenAGooseGame()
        
        whenGetRule(space: 6)
        
        thenRuleIs("The Bridge: Go to space 12")
    }
    
    func test_PrintMoveTwoSpaceForward_WhenSpaceIs12() {
        givenAGooseGame()
        
        whenGetRule(space: 12)
        
        thenRuleIs("Move two spaces forward")
    }
    
    func test_PrintTheHotel_WhenSpaceIs19() {
        givenAGooseGame()
        
        whenGetRule(space: 19)
        
        thenRuleIs("The Hotel: Stay for (miss) one turn")
    }
    
    func test_PrintTheWell_WhenSpaceIs31() {
        givenAGooseGame()
        
        whenGetRule(space: 31)
        
        thenRuleIs("The Well: Wait until someone comes to pull you out - they then take your place")
    }
    
    func test_PrintTheMaze_WhenSpaceIs42() {
        givenAGooseGame()
        
        whenGetRule(space: 42)
        
        thenRuleIs("The Maze: Go back to space 39")
    }
    
    func test_PrintThePrison_WhenSpaceIs50() {
        givenAGooseGame()
        
        whenGetRule(space: 50)
        
        thenRuleIs("The Prison: Wait until someone comes to release you - they then take your place")
    }
    
    func test_PrintThePrison_WhenSpaceIs55() {
        givenAGooseGame()
        
        whenGetRule(space: 55)
        
        thenRuleIs("The Prison: Wait until someone comes to release you - they then take your place")
    }
    
    private func givenAGooseGame() {
        gooseGame = GooseGame()
    }
    
    private func whenGetRule(space: Int) {
        rule = gooseGame.getRuleDescriptionBy(space: space)
    }
    
    private func thenRuleIs(_ rule: String) {
        XCTAssertEqual(self.rule, rule)
    }
}
