
import Foundation

var inputNumbers = [Int]()
var answerNumbers = [Int]()
var remainingTryCount: Int = 9

class NumberBaseballGame {
    /// 중복되지 않는 임의의 정수 생성 함수
    func generateRandomUniqueNumbers() -> [Int] {
        var randomUniqueNumbers = [Int]()

        while randomUniqueNumbers.count < 3 {
            let randomNumber: Int = Int.random(in: 1...9)
            if randomUniqueNumbers.contains(randomNumber) {
                continue
            } else {
                randomUniqueNumbers.append(randomNumber)
            }
        }
        return randomUniqueNumbers
    }

    /// 스트라이크, 볼, 사용자 승리, 컴퓨터 승리 판단 및 출력 함수
    func checkStrikeOrBall(of: [Int]) -> Int {
        var strikeCount = 0
        var ballCount = 0
        remainingTryCount -= 1

        for index in 0...2 {
            if of[index] == answerNumbers[index] {
                strikeCount += 1
            } else if answerNumbers.contains(inputNumbers[index]) {
                ballCount += 1
            }
        }

        print("\(strikeCount) 스트라이크, \(ballCount) 볼")
        return strikeCount
    }

    /// remainingTryCount 또는 승자를 출력하는 함수
    func printGameStatusOrWinner(strikeCount: Int, remainingTryCount: Int) {
        print("------------------------------")
        
        if strikeCount == 3 {
            print("사용자 승리...!")
        } else if remainingTryCount == 0 {
            print("컴퓨터 승리...!")
        } else {
            print("남은 기회 : \(remainingTryCount)")
        }
    }

    /// 메뉴 선택하는 함수
    func printGameMenu() {
        print("""
                1. 게임 시작
                2. 게임 종료
                원하는 기능을 선택해주세요 :
                """, terminator: " ")
    }

    func selectGameMenu() {
           while true {
               printGameMenu()
               if let selectedMenuNumber: String = readLine() {
                   switch selectedMenuNumber {
                   case "1": startGame()
                   case "2": return
                   default:
                       print("""
                                ------------------------------
                                입력값이 잘못되었습니다.
                                """)
                   }
               }
           }
       }

    func getAndPreprocessNumbersInput() -> [Int] {
        var preprocessedNumbersInput = [Int]()
        
        while Set(preprocessedNumbersInput).count != 3 {
            preprocessedNumbersInput = [Int]()
            print("""
                        숫자 3개를 띄어쓰기로 구분하여 입력해주세요.
                        중복숫자는 허용하지 않습니다.
                        입력 :
                        """, terminator: " ")
            if let rawNumbersInput: String = readLine() {
                let preprocessingNumbersInput: [String] = rawNumbersInput.split(separator: " ").map { String($0) }
                for index in preprocessingNumbersInput {
                    if let oneIntegerElementFromPreprocessingNumbersInput: Int = Int(index) {
                        preprocessedNumbersInput.append(oneIntegerElementFromPreprocessingNumbersInput)
                    } else {
                        print("""
                                 ------------------------------
                                 입력값이 잘못되었습니다.
                                 """)
                        break
                    }
                }
            }
        }
        return preprocessedNumbersInput
    }

    /// 게임 시작 함수
    func startGame() {
        remainingTryCount = 9
        answerNumbers = generateRandomUniqueNumbers()
        for _ in 1...9 {
            inputNumbers = getAndPreprocessNumbersInput()
            let strikeCount: Int = checkStrikeOrBall(of: inputNumbers)
            printGameStatusOrWinner(strikeCount: strikeCount, remainingTryCount: remainingTryCount)
            if inputNumbers == answerNumbers {
                break
            }
        }
    }
}

let numberBaseballGame = NumberBaseballGame()
numberBaseballGame.selectGameMenu()


