//
//  NumberBaseball - main.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation

var userGameInput = [Int]()
var correctAnswer = [Int]()
var tryCount: Int = 9

func generateThreeRandomUniqueNumbers() -> [Int] {
    var temporaryArray = [Int]()
    
    while temporaryArray.count < 3 {
        let randomNumber: Int = Int.random(in: 1...9)
        if temporaryArray.contains(randomNumber) {
            continue
        } else {
            temporaryArray.append(randomNumber)
        }
    }
    
    return temporaryArray
}

func strikeOrBall(threeNumberArray: [Int]) {
    var strikeCounter = 0
    var ballCounter = 0
    tryCount -= 1
    
    for i in 0...2 {
        if threeNumberArray[i] == correctAnswer[i] {
            strikeCounter += 1
        } else if correctAnswer.contains(threeNumberArray[i]) {
            ballCounter += 1
        }
    }
    
    print("\(strikeCounter) 스트라이크, \(ballCounter) 볼")
    
    if strikeCounter == 3 {
        print("사용자 승리..!")
    } else {
        print("남은 기회 : \(tryCount)")
    }
}

func gameStart() {
    correctAnswer = generateThreeRandomUniqueNumbers()

    while tryCount != 0 {
        userGameInput = generateThreeRandomUniqueNumbers()
        print(correctAnswer, userGameInput)
        strikeOrBall(threeNumberArray: userGameInput)
    }

    strikeOrBall(threeNumberArray: correctAnswer)
}

gameStart()
