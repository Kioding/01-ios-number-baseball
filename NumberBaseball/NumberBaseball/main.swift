//
//  NumberBaseball - main.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation

// 전역 변수 생성 (게임 중 사용자 입력, 정답 숫자, 잔여 시도 횟수)
var userGameInput = [Int]()
var answerNumbers = [Int]()
var tryCount: Int = 9


class NumberBaseballGame {
    // 중복되지 않는 임의의 정수 3개 생성 함수
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

    // 스트라이크, 볼, 사용자 승리, 컴퓨터 승리 판단 및 출력 함수
    func strikeOrBall(threeNumberArray: [Int]) {
        var strikeCounter = 0
        var ballCounter = 0
        tryCount -= 1

        for i in 0...2 {
            if threeNumberArray[i] == answerNumbers[i] {
                strikeCounter += 1
            } else if answerNumbers.contains(threeNumberArray[i]) {
                ballCounter += 1
            }
        }
        
        print("임의의 수 :",terminator: " ")
        for i in 0...2 {
            print("\(userGameInput[i])", terminator: " ")
        }
        print("")

        print("\(strikeCounter) 스트라이크, \(ballCounter) 볼")
        
        if strikeCounter == 3 {
            print("사용자 승리...!")
        } else if tryCount == 0 {
            print("컴퓨터 승리...!")
        } else {
            print("남은 기회 : \(tryCount)")
        }
        print("---------------")
    }

    // 게임 시작 함수
    func gameStart() {
        answerNumbers = generateThreeRandomUniqueNumbers()

        while tryCount != 0 {
            userGameInput = generateThreeRandomUniqueNumbers()
            strikeOrBall(threeNumberArray: userGameInput)
            if userGameInput == answerNumbers {
                break
            }
        }
        
    }
}

let numberBaseballGame = NumberBaseballGame()
numberBaseballGame.gameStart()
