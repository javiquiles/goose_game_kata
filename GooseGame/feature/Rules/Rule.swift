//
//  Rule.swift
//  GooseGame
//
//  Created by Javier Alejandro Quiles on 02/08/2022.
//

protocol Rule {
    init(next: Rule?)
    func handle(space: Int) -> String?
}
