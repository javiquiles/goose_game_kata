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
        gooseGame = GooseGame()
        
        rule = gooseGame.getRuleBy(space: 1)
        
        XCTAssertEqual(rule, "Stay in space 1")
    }
    
    func test_PrintStayInSpaceTwo_WhenSpeceIs2() {
        gooseGame = GooseGame()
        
        rule = gooseGame.getRuleBy(space: 2)
        
        XCTAssertEqual(rule, "Stay in space 2")
    }
    
    func test_PrintTheBridgeGoToSpaceTwelve_WhenSpaceIs6() {
        gooseGame = GooseGame()
        
        rule = gooseGame.getRuleBy(space: 6)
        
        XCTAssertEqual(rule, "The Bridge: Go to space 12")
    }
    
    func test_PrintMoveTwoSpaceForward_WhenSpaceIs12() {
        gooseGame = GooseGame()
        
        rule = gooseGame.getRuleBy(space: 12)
        
        XCTAssertEqual(rule, "Move two spaces forward")
    }
}
