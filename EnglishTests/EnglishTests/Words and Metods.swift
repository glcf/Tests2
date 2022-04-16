//
//  Words.swift
//  EnglishTests
//
//  Created by M on 11.11.2021.
//

import UIKit

var foodWordsQuestion = [
    "миндаль" : "almond",
    "абрикос" : "apricot",
    "ежевика" : "blackberry",
    "черника" : "blueberry",
    "кешью" : "cashew",
    "вишня" : "cherry",
    "клюква" : "cranberry",
    "виноград" : "grape",
    "лесной орех" : "hazelnut",
    "лимон" : "lemon",
    "дыня" : "melon",
    "персик" : "peach",
    "арахис" : "peanut",
    "груша" : "pear",
    "ананас" : "pineapple",
    "слива" : "plum",
    "малина" : "raspberry",
    "клубника" : "strawberry",
    "грецкий орех" : "walnut",
    "арбуз" : "watermelon",
    
    "гранат" : "",
    "огурец" : "",
    "манго" : "",
    "редис" : "",
    "картофель" : "",
    "морковь" : "",
    "свекла" : "",
    "хрен" : "",
    "лук" : "",
    "перец" : "",
    "черешня" : "",
    "авокадо" : "",
    "банан" : "",
    "мандарин" : "",
    "голубика" : "",
    "фундук" : "",
    "кукуруза" : "",
    "баклажан" : "",
    "тыква" : "",
    "брокколи" : "",
    "капуста" : "",
    "кабачок" : "",
    "чеснок" : "",
    "репа" : "",
    "помидор" : "",
    "кокос" : "",
]




var foodWordsAnswer = [
    "almond",
    "apricot",
    "blackberry",
    "blueberry",
    "cashew",
    "cherry",
    "cranberry",
    "grape",
    "hazelnut",
    "lemon",
    "lime",
    "melon",
    "peach",
    "peanut",
    "pear",
    "pineapple",
    "plum",
    "raspberry",
    "strawberry",
    "walnut",
    "watermelon"
]

var questionQountValue = 0
var trueAnswers = 0 //кол-во правильных ответов
var answer = 0 //флаг правильного ответа при нажатии кнопки
var testWord = ""

extension ViewController {
    
    
    func firstAnswerPressed() {
        if firstAnswerButton.currentTitle == testWord {
            firstAnswerButton.backgroundColor = .green
            answer = 1
            questionLabel.backgroundColor = .green
            secondAnswerButton.isEnabled = false
            thirdAnswerButton.isEnabled = false
            forthAnswerButton.isEnabled = false
//            questionLabel.font = UIFont(name: questionLabel.font.fontName, size: 35)
        } else {
            firstAnswerButton.backgroundColor = .red
            secondAnswerButton.backgroundColor = .red
            thirdAnswerButton.backgroundColor = .red
            forthAnswerButton.backgroundColor = .red
            firstAnswerButton.isEnabled = false
            secondAnswerButton.isEnabled = false
            thirdAnswerButton.isEnabled = false
            forthAnswerButton.isEnabled = false
        }
    }
    
    
    func secondAnswerPressed() {
        if secondAnswerButton.currentTitle == testWord {
            secondAnswerButton.backgroundColor = .green
            answer = 1
            questionLabel.backgroundColor = .green
            firstAnswerButton.isEnabled = false
            thirdAnswerButton.isEnabled = false
            forthAnswerButton.isEnabled = false
        } else {
            firstAnswerButton.backgroundColor = .red
            secondAnswerButton.backgroundColor = .red
            thirdAnswerButton.backgroundColor = .red
            forthAnswerButton.backgroundColor = .red
            firstAnswerButton.isEnabled = false
            secondAnswerButton.isEnabled = false
            thirdAnswerButton.isEnabled = false
            forthAnswerButton.isEnabled = false
        }
    }
    
    
    
    func thirdAnswerPressed() {
        if thirdAnswerButton.currentTitle == testWord {
            thirdAnswerButton.backgroundColor = .green
            answer = 1
            questionLabel.backgroundColor = .green
            firstAnswerButton.isEnabled = false
            secondAnswerButton.isEnabled = false
            forthAnswerButton.isEnabled = false
        } else {
            firstAnswerButton.backgroundColor = .red
            secondAnswerButton.backgroundColor = .red
            thirdAnswerButton.backgroundColor = .red
            forthAnswerButton.backgroundColor = .red
            firstAnswerButton.isEnabled = false
            secondAnswerButton.isEnabled = false
            thirdAnswerButton.isEnabled = false
            forthAnswerButton.isEnabled = false
        }
    }
    
    
    
    func forthAnswerPressed() {
        if forthAnswerButton.currentTitle == testWord {
            forthAnswerButton.backgroundColor = .green
            answer = 1
            questionLabel.backgroundColor = .green
            firstAnswerButton.isEnabled = false
            secondAnswerButton.isEnabled = false
            thirdAnswerButton.isEnabled = false
        } else {
            firstAnswerButton.backgroundColor = .red
            secondAnswerButton.backgroundColor = .red
            thirdAnswerButton.backgroundColor = .red
            forthAnswerButton.backgroundColor = .red
            firstAnswerButton.isEnabled = false
            secondAnswerButton.isEnabled = false
            thirdAnswerButton.isEnabled = false
            forthAnswerButton.isEnabled = false
        }
    }

    
    
    func nextQuestionFalse() { //функция при неправильном ответе
        answer = 0
        firstAnswerButton.backgroundColor = .systemGray2
        secondAnswerButton.backgroundColor = .systemGray2
        thirdAnswerButton.backgroundColor = .systemGray2
        forthAnswerButton.backgroundColor = .systemGray2
        questionLabel.backgroundColor = .systemGray2

        firstAnswerButton.isEnabled = true
        secondAnswerButton.isEnabled = true
        thirdAnswerButton.isEnabled = true
        forthAnswerButton.isEnabled = true
        
        firstAnswerButton.layer.cornerRadius = 10
        secondAnswerButton.layer.cornerRadius = 10
        thirdAnswerButton.layer.cornerRadius = 10
        forthAnswerButton.layer.cornerRadius = 10
        
        questionLabel.layer.masksToBounds = true
        questionLabel.layer.cornerRadius = 10

        
        questionQount.text = String(questionQountValue)

        if questionQountValue < 11 {
            questionQountValue = questionQountValue + 1

            let randomQuestion = foodWordsQuestion.randomElement()

            let randomAnswerOne = randomQuestion?.value
            let randomanswerTwo = foodWordsQuestion.randomElement()?.value //ИСКЛЮЧИТЬ ПРЕДЫДУЩЕЕ СЛОВО
            let randomAnswerThree = foodWordsQuestion.randomElement()?.value //ИСКЛЮЧИТЬ ПРЕДЫДУЩЕЕ СЛОВО
            let randomanswerFour = foodWordsQuestion.randomElement()?.value //ИСКЛЮЧИТЬ ПРЕДЫДУЩЕЕ СЛОВО

            let randomAnswers = [randomAnswerOne, randomanswerTwo, randomAnswerThree, randomanswerFour]
            let shuffleRandomAnswers = randomAnswers.shuffled()

            questionLabel.text = randomQuestion?.key
            firstAnswerButton.setTitle(String(shuffleRandomAnswers[0] ?? "error"), for: .normal)
            secondAnswerButton.setTitle(String(shuffleRandomAnswers[1] ?? "error"), for: .normal)
            thirdAnswerButton.setTitle(String(shuffleRandomAnswers[2] ?? "error"), for: .normal)
            forthAnswerButton.setTitle(String(shuffleRandomAnswers[3] ?? "error"), for: .normal)
            testWord = randomAnswerOne ?? "error"
            wordsLabel.text = testWord
            questionQount.text = String(questionQountValue)
            
        } else if questionQountValue == 11 {
            questionQountValue = 0
            dismiss(animated: true)
        }
    }
    
    func nextQuestion() { //функция при правильном ответе
        trueAnswers = trueAnswers + 1
        answer = 0
        firstAnswerButton.backgroundColor = .systemGray2
        secondAnswerButton.backgroundColor = .systemGray2
        thirdAnswerButton.backgroundColor = .systemGray2
        forthAnswerButton.backgroundColor = .systemGray2
        questionLabel.backgroundColor = .systemGray2

        firstAnswerButton.isEnabled = true
        secondAnswerButton.isEnabled = true
        thirdAnswerButton.isEnabled = true
        forthAnswerButton.isEnabled = true
        
        firstAnswerButton.layer.cornerRadius = 10
        secondAnswerButton.layer.cornerRadius = 10
        thirdAnswerButton.layer.cornerRadius = 10
        forthAnswerButton.layer.cornerRadius = 10

        questionLabel.layer.masksToBounds = true
        questionLabel.layer.cornerRadius = 10
        
        
        

        if questionQountValue < 11 {
            questionQountValue = questionQountValue + 1

            let randomQuestion = foodWordsQuestion.randomElement()

            let randomAnswerOne = randomQuestion?.value
            let randomanswerTwo = foodWordsQuestion.randomElement()?.value //ИСКЛЮЧИТЬ ПРЕДЫДУЩЕЕ СЛОВО
            let randomAnswerThree = foodWordsQuestion.randomElement()?.value //ИСКЛЮЧИТЬ ПРЕДЫДУЩЕЕ СЛОВО
            let randomanswerFour = foodWordsQuestion.randomElement()?.value //ИСКЛЮЧИТЬ ПРЕДЫДУЩЕЕ СЛОВО

            let randomAnswers = [randomAnswerOne, randomanswerTwo, randomAnswerThree, randomanswerFour]
            let shuffleRandomAnswers = randomAnswers.shuffled()

            questionLabel.text = randomQuestion?.key
            firstAnswerButton.setTitle(String(shuffleRandomAnswers[0] ?? "error"), for: .normal)
            secondAnswerButton.setTitle(String(shuffleRandomAnswers[1] ?? "error"), for: .normal)
            thirdAnswerButton.setTitle(String(shuffleRandomAnswers[2] ?? "error"), for: .normal)
            forthAnswerButton.setTitle(String(shuffleRandomAnswers[3] ?? "error"), for: .normal)
            testWord = randomAnswerOne ?? "error"
            wordsLabel.text = testWord
            questionQount.text = String(questionQountValue)
            trueAnswersLabel.text = String(trueAnswers)
        
        } else if questionQountValue == 11 {
            questionQountValue = 0
            dismiss(animated: true)
        }
    }

    
    
}

//enum Answers {
//    case one
//    case two
//    case three
//    case forth
//    case five
//}
//
//var answersCase: Answers = .one





