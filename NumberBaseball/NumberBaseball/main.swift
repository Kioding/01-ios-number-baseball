//
//  NumberBaseball - main.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation

// 빈 배열 생성
var answerNumbers:[Int] = []
var tryNumbers:[Int] = []

// 전역변수
var firstNum:Int = 0
var secondNum:Int = 0
var thirdNum:Int = 0
var cnt = 9

class BaseballGame {
    func start() {
        // 3개의 랜덤숫자 생성함수
        func makeRandomNumber() -> [Int] {
            var threeNumArr:[Int] = []
            
            firstNum = Int.random(in: 1...9)
            threeNumArr.append(firstNum)
            
            while true {
                secondNum = Int.random(in: 1...9)
                if firstNum == secondNum {
                    continue
                } else {
                    threeNumArr.append(secondNum)
                    break
                }
            }
            
            while true {
                thirdNum = Int.random(in: 1...9)
                if thirdNum == firstNum || thirdNum == secondNum {
                    continue
                } else {
                    threeNumArr.append(thirdNum)
                    break
                }
            }
            return threeNumArr
        }
        
        // 정답용, 3개의 랜덤숫자 생성함수 호출
        answerNumbers = makeRandomNumber()
        
        // 기회는 9번
        while cnt != 0 {
            cnt -= 1
            var strikeCount = 0
            var ballCount = 0
            
            // 시도용, 3개의 랜덤숫자 생성함수 호출
            tryNumbers = makeRandomNumber()
            
            for i in 0...2 {
                if tryNumbers[i] == answerNumbers[i] {
                    strikeCount += 1
                } else if answerNumbers.contains(tryNumbers[i]) {
                    ballCount += 1
                }
            }
            
            print("----------------")
            if answerNumbers == tryNumbers {
                print("임의의 수 :", terminator: " ")
                for i in 0...2 {
                    print("\(tryNumbers[i])", terminator: " ")
                }
                print("")
                print("정답 : \(answerNumbers)")
                print("정답입니다!")
                break
            } else {
                print("임의의 수 :", terminator: " ")
                for i in 0...2 {
                    print("\(tryNumbers[i])", terminator: " ")
                }
                print("")
                print("\(strikeCount) 스트라이크, \(ballCount) 볼")
                print("남은 기회 : \(cnt)")
                if cnt == 0 {
                    print("컴퓨터 승리...!")
                }
            }
        }
    }
}

BaseballGame().start()

