//
//  GameProtocol.swift
//  Right on target
//
//  Created by Nor Gh on 7/13/22.
//

import Foundation


protocol GameProtocol {
    
    var score:Int { get }
    var currentSecretValue:Int { get }
    var isGameEnded:Bool {get}
    func restartGame()
    func startNewGame()
    func calculateScore(with value:Int)
}
