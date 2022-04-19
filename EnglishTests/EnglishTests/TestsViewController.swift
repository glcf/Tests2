//
//  ViewController.swift
//  EnglishTests
//
//  Created by M on 11.11.2021.
//

import UIKit

class TestsViewController: UIViewController {
    
    
    @IBOutlet weak var backgroundFoodImageView: UIImageView!
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var memojiLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var poihaliButton: UIButton!
    @IBOutlet weak var questionQount: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var firstAnswerButton: UIButton!
    @IBOutlet weak var secondAnswerButton: UIButton!
    @IBOutlet weak var thirdAnswerButton: UIButton!
    @IBOutlet weak var forthAnswerButton: UIButton!
    @IBOutlet weak var wordsLabel: UILabel!
    @IBOutlet weak var trueAnswersLabel: UILabel!
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var startLabel: UILabel!
    
    //    var helloText: String = "" //для передачи данных с 1 вц
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUITestsViewController()
    }
    
    
    
    
    
    @IBAction func poihaliButtonPressed(_ sender: Any) {
        
        questionQount.text = String(questionQountValue)
        questionQountValue = questionQountValue + 1
        
        updateButtons()
        
 
        
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
        foodWordsQuestion.removeValue(forKey: questionLabel.text ?? "") //ИСКЛЮЧАЕТ ПРЕДЫДУЩЕЕ СЛОВО
        
        
    }
    
    
    
    @IBAction func startButtonPushed(_ sender: Any) {
        if (sender as AnyObject).tag == 5 {
            if answer == 1 {
                nextQuestion()
            } else {
                nextQuestionFalse()
            }
        } else if (sender as AnyObject).tag == 1 {
            firstAnswerPressed()
        } else if (sender as AnyObject).tag == 2 {
            secondAnswerPressed()
            
        } else if (sender as AnyObject).tag == 3 {
            thirdAnswerPressed()
            
        } else if (sender as AnyObject).tag == 4 {
            forthAnswerPressed()
        }
    }
}
 
    
        
        
        
        
        
        
        
//        switch answersCase {
//        case .one:
//            if (sender as AnyObject).tag == 0 {
//                nextQuestion()
//            }
//            answersCase = .two
//        case .two:
//            if (sender as AnyObject).tag == 1 {
//                firstAnswerPressed()
//            }
//            answersCase = .three
//        case .three:
//            if (sender as AnyObject).tag == 2 {
//                secondAnswerPressed()
//            }
//            answersCase = .forth
//        case .forth:
//            if (sender as AnyObject).tag == 3 {
//                thirdAnswerPressed()
//            }
//            answersCase = .five
//        case .five:
//            if (sender as AnyObject).tag == 4 {
//                forthAnswerPressed()
//            }
//        }
        
        
    

        
