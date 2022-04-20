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
    "гранат" : "garnet",
    "огурец" : "cucumber",
    "манго" : "mango",
    "редис" : "radish",
    "картофель" : "potato",
    "морковь" : "carrot",
    "свекла" : "beet",
    "хрен" : "horseradish",
    "лук" : "onion",
    "перец" : "pepper",
    "черешня" : "cherries",
    "авокадо" : "avocado",
    "банан" : "banana",
    "мандарин" : "tangerine",
    "голубика" : "blueberry",
    "фундук" : "hazelnut",
    "кукуруза" : "corn",
    "баклажан" : "eggplant",
    "тыква" : "pumpkin",
    "брокколи" : "broccoli",
    "капуста" : "cabbage",
    "кабачок" : "zucchini",
    "чеснок" : "garlic",
    "репа" : "turnip",
    "помидор" : "tomato",
    "кокос" : "coconut",
    "цветная капуста" : "cauliflower",
    "гуава" : "guava",
    "папайя" : "papaya",
    "горох" : "peas",
    "крыжовник" : "gooseberry",
    "киви" : "kiwi",
    "инжир" : "figs",
    "айва" : "quince",
    "алыча" : "cherry plum",
    "боярышник" : "hawthorn",
    "грейпфрут" : "grapefruit",
    "маракуйя" : "passion fruit",
    "нектарин" : "nectarine",
    "фейхоа" : "feijoa",
    "хурма" : "persimmon",
    "имбирь" : "ginger",
    "топинамбур" : "jerusalem artichoke",
    "шпинат" : "spinach",
    "сельдерей" : "celery",
    "щавель" : "sorrel",
    "петрушка" : "parsley",
    "укроп" : "dill",
    "спаржа" : "asparagus",
    "базилик" : "basil",
    "руккола" : "arugula",
    "горчица" : "mustard",
    "лук-порей" : "leek",
    "смородина" : "currant",
    "чечевица" : "lentils",
    "грибы" : "mushrooms",
    "рис" : "rice",
    "пшеница" : "wheat",
    "овёс" : "oats",
    "оливки" : "olives",
    "мята" : "mint",
    "кунжут" : "sesame",
    "изюм" : "raisin"
]

let happyMemojies = [
    "🙃","😇","😏","🥳","🤩","🤪","🤗","🤤"
]

let sadMemojies = [
"😖", "😩", "😥", "😵‍💫", "😭", "😔", "😣", "😒"
]

var foodWordStatictic = [String : Int]()

func createWordStatistic () -> [String : Int] {
    var dictForHelp = foodWordsQuestion
    for (key, value) in dictForHelp {dictForHelp[key, default: value] = "\(0)"}
    foodWordStatictic = dictForHelp.compactMapValues { str in Int(str)
    }
    return foodWordStatictic
}








var foodWordsAnswer = [String]()



var questionQountValue = 1
var trueAnswers = 0 //кол-во правильных ответов
var answer = 0 //флаг правильного ответа при нажатии кнопки
var testWord = ""

extension TestsViewController {
  
    func addFoodWordsAnswer(Dictionary: [String : String]) -> [String] {
        for values in Dictionary {
            foodWordsAnswer.append("\(Dictionary.values)")
        }
        return foodWordsAnswer
    } //создание массива с вариантами ответов

    
    
    
    
    
    
    
    func firstAnswerPressed() {
    
        if firstAnswerButton.currentTitle == testWord {
            firstAnswerButton.backgroundColor = UIColor.init(red: 33/255, green: 157/255, blue: 34/255, alpha: 1)
            answer = 1
            questionLabel.backgroundColor = UIColor.init(red: 33/255, green: 157/255, blue: 34/255, alpha: 1)
            secondAnswerButton.isEnabled = false
            thirdAnswerButton.isEnabled = false
            forthAnswerButton.isEnabled = false
            memojiLabel.text = happyMemojies.randomElement()

        } else {
            firstAnswerButton.backgroundColor = .red
            secondAnswerButton.backgroundColor = .red
            thirdAnswerButton.backgroundColor = .red
            forthAnswerButton.backgroundColor = .red
            firstAnswerButton.isEnabled = false
            secondAnswerButton.isEnabled = false
            thirdAnswerButton.isEnabled = false
            forthAnswerButton.isEnabled = false
            memojiLabel.text = sadMemojies.randomElement()
            successfullyBookedFlight()
        }
    }
    
    
    func secondAnswerPressed() {
        if secondAnswerButton.currentTitle == testWord {
            secondAnswerButton.backgroundColor = UIColor.init(red: 33/255, green: 157/255, blue: 34/255, alpha: 1)
            answer = 1
            questionLabel.backgroundColor = UIColor.init(red: 33/255, green: 157/255, blue: 34/255, alpha: 1)
            firstAnswerButton.isEnabled = false
            thirdAnswerButton.isEnabled = false
            forthAnswerButton.isEnabled = false
            memojiLabel.text = happyMemojies.randomElement()

        } else {
            firstAnswerButton.backgroundColor = .red
            secondAnswerButton.backgroundColor = .red
            thirdAnswerButton.backgroundColor = .red
            forthAnswerButton.backgroundColor = .red
            firstAnswerButton.isEnabled = false
            secondAnswerButton.isEnabled = false
            thirdAnswerButton.isEnabled = false
            forthAnswerButton.isEnabled = false
            memojiLabel.text = sadMemojies.randomElement()
            successfullyBookedFlight()

        }
    }
    
    
    
    func thirdAnswerPressed() {
        if thirdAnswerButton.currentTitle == testWord {
            thirdAnswerButton.backgroundColor = UIColor.init(red: 33/255, green: 157/255, blue: 34/255, alpha: 1)
            answer = 1
            questionLabel.backgroundColor = UIColor.init(red: 33/255, green: 157/255, blue: 34/255, alpha: 1)
            firstAnswerButton.isEnabled = false
            secondAnswerButton.isEnabled = false
            forthAnswerButton.isEnabled = false
            memojiLabel.text = happyMemojies.randomElement()

        } else {
            firstAnswerButton.backgroundColor = .red
            secondAnswerButton.backgroundColor = .red
            thirdAnswerButton.backgroundColor = .red
            forthAnswerButton.backgroundColor = .red
            firstAnswerButton.isEnabled = false
            secondAnswerButton.isEnabled = false
            thirdAnswerButton.isEnabled = false
            forthAnswerButton.isEnabled = false
            memojiLabel.text = sadMemojies.randomElement()
            successfullyBookedFlight()

        }
    }
    
    
    
    func forthAnswerPressed() {
        if forthAnswerButton.currentTitle == testWord {
            forthAnswerButton.backgroundColor = UIColor.init(red: 33/255, green: 157/255, blue: 34/255, alpha: 1)
            answer = 1
            questionLabel.backgroundColor = UIColor.init(red: 33/255, green: 157/255, blue: 34/255, alpha: 1)
            firstAnswerButton.isEnabled = false
            secondAnswerButton.isEnabled = false
            thirdAnswerButton.isEnabled = false
            memojiLabel.text = happyMemojies.randomElement()

        } else {
            firstAnswerButton.backgroundColor = .red
            secondAnswerButton.backgroundColor = .red
            thirdAnswerButton.backgroundColor = .red
            forthAnswerButton.backgroundColor = .red
            firstAnswerButton.isEnabled = false
            secondAnswerButton.isEnabled = false
            thirdAnswerButton.isEnabled = false
            forthAnswerButton.isEnabled = false
            memojiLabel.text = sadMemojies.randomElement()
            successfullyBookedFlight()

        }
    }

    
    
    func nextQuestionFalse() { //функция при неправильном ответе
        memojiLabel.text = "🤔"
        answer = 0
        progressView.progress += 0.1
        
        
        
        firstAnswerButton.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        secondAnswerButton.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        thirdAnswerButton.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        forthAnswerButton.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        questionLabel.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        
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
            let randomanswerTwo = foodWordsQuestion.randomElement()?.value
            let randomAnswerThree = foodWordsQuestion.randomElement()?.value
            let randomanswerFour = foodWordsQuestion.randomElement()?.value
         
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
            
            foodImageView.image = UIImage(named: "\(testWord)")

            
            foodWordsQuestion.removeValue(forKey: questionLabel.text ?? "") //ИСКЛЮЧАЕТ ПРЕДЫДУЩЕЕ СЛОВО

        }
 else if questionQountValue == 11 {
     questionQountValue = 1
     //ТУТ СДЕЛАТЬ ОПОВЕЩЕНИЕ О РЕЗУЛЬТАТАХ ТЕСТА
     
     dismiss(animated: true)
        }
    }
        

    
    
    func nextQuestion() { //функция при правильном ответе
        memojiLabel.text = "🤔"
        trueAnswers = trueAnswers + 1
        answer = 0
        progressView.progress += 0.1
        firstAnswerButton.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        secondAnswerButton.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        thirdAnswerButton.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        forthAnswerButton.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        questionLabel.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)

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
            let randomanswerTwo = foodWordsQuestion.randomElement()?.value
            let randomAnswerThree = foodWordsQuestion.randomElement()?.value
            let randomanswerFour = foodWordsQuestion.randomElement()?.value

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
            
            foodImageView.image = UIImage(named: "\(testWord)")

            
            foodWordsQuestion.removeValue(forKey: questionLabel.text ?? "") //ИСКЛЮЧАЕТ ПРЕДЫДУЩЕЕ СЛОВО
            
        }
        
        
        else if questionQountValue == 11 {
            questionQountValue = 1
            //ТУТ СДЕЛАТЬ ОПОВЕЩЕНИЕ О РЕЗУЛЬТАТАХ ТЕСТА

            dismiss(animated: true)
    
    }
    }
    
}







    

