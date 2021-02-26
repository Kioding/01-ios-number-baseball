
import Foundation

var threeNumbersInput = [Int]()
var answerNumbers = [Int]()
var remainingTryCount: Int = 9

class NumberBaseballGame {
    /// 중복되지 않는 임의의 정수 3개 생성 함수
    func generateThreeRandomUniqueNumbers() -> [Int] {
        var threeRandomUiqueNumbers = [Int]()

        while threeRandomUiqueNumbers.count < 3 {
            let randomNumber: Int = Int.random(in: 1...9)
            if threeRandomUiqueNumbers.contains(randomNumber) {
                continue
            } else {
                threeRandomUiqueNumbers.append(randomNumber)
            }
        }
        return threeRandomUiqueNumbers
    }

    /// 스트라이크, 볼, 사용자 승리, 컴퓨터 승리 판단 및 출력 함수
    func checkStrikeOrBall(of: [Int]) -> Int {
        var strikeCount = 0
        var ballCount = 0
        remainingTryCount -= 1

        for index in 0...2 {
            if of[index] == answerNumbers[index] {
                strikeCount += 1
            } else if answerNumbers.contains(threeNumbersInput[index]) {
                ballCount += 1
            }
        }

        print("\(strikeCount) 스트라이크, \(ballCount) 볼")
        return strikeCount
    }

    /// remainingTryCount 또는 승자를 출력하는 함수
    func printGameStatueOrWinner(strikeCount: Int, remainingTryCount: Int) {
        if strikeCount == 3 {
            print("사용자 승리...!")
        } else if remainingTryCount == 0 {
            print("컴퓨터 승리...!")
        } else {
            print("남은 기회 : \(remainingTryCount)")
        }
        print("---------------")
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
                       print("입력값이 잘못되었습니다.")
                   }
               }
           }
       }
    
    func getAndPreprocessThreeNumbersInput() -> [Int] {
        var preprocessedThreeNumbersInput = [Int]()
        while Set(preprocessedThreeNumbersInput).count != 3 {
            preprocessedThreeNumbersInput = [Int]()
            print("""
                        숫자 3개를 띄어쓰기로 구분하여 입력해주세요.
                        중복숫자는 허용하지 않습니다.
                        입력:
                        """, terminator: "")
            if let rawThreeNumbersInput: String = readLine() {
                let preprocessingThreeNumbersInput: [String] = rawThreeNumbersInput.split(separator: " ").map { String($0) }
                for index in preprocessingThreeNumbersInput {
                    if let oneIntegerElementFromPreprocessingThreeNumbersInput: Int = Int(index) {
                        preprocessedThreeNumbersInput.append(oneIntegerElementFromPreprocessingThreeNumbersInput)
                    } else {
                        print("입력이 잘못되었습니다.")
                        break
                    }
                }
            }
        }
        return preprocessedThreeNumbersInput
    }

    /// 게임 시작 함수
    func startGame() {
        remainingTryCount = 9
        answerNumbers = generateThreeRandomUniqueNumbers()
        while remainingTryCount != 0 {
            threeNumbersInput = getAndPreprocessThreeNumbersInput()
            let strikeCount: Int = checkStrikeOrBall(of: threeNumbersInput)
            printGameStatueOrWinner(strikeCount: strikeCount, remainingTryCount: remainingTryCount)
            if threeNumbersInput == answerNumbers {
                break
            }
        }
    }
}

let numberBaseballGame = NumberBaseballGame()
numberBaseballGame.selectGameMenu()
