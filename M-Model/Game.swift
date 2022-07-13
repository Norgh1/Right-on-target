//
//  Game.swift
//  Right on target
//
//  Created by Nor Gh on 7/13/22.
//

import Foundation

class Game: GameProtocol {
    
    var score: Int = 0
    private var minSecretValue:Int
    private var maxSecretValue: Int
    private var lastRound: Int
    private var currentRound: Int = 1
    var currentSecretValue: Int = 1
    
    var isGameEnded: Bool {
        if currentRound >= lastRound {
            return true
        } else {
            return false
        }
    }
    
    
    init?(startValue: Int, endValue: Int, rounds: Int) {
        guard startValue <= endValue else {
            return nil
        }
        minSecretValue = startValue
        maxSecretValue = endValue
        lastRound = rounds
        currentSecretValue = self.getNewSecretValue()
    }
    
    func restartGame() {
        currentRound = 0
        score = 0
        startNewRound()
    }
    
    func startNewGame() {
        currentSecretValue = self.getNewSecretValue()
    }
    
    func calculateScore(with value: Int) {
        if value > currentSecretValue {
            score += 50 - value + currentRound
        } else if value < currentSecretValue {
            score += 50 - currentSecretValue + value
        } else {
            score += 50
        }
    }
    
    private func getNewSecretValue() -> Int {
        (minSecretValue...maxSecretValue).randomElement()!
    }
    
    
    func startNewRound() {
        currentSecretValue = self.getNewSecretValue()
        currentRound += 1
    }
}
