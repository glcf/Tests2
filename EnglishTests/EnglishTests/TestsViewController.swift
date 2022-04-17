//
//  ViewController.swift
//  EnglishTests
//
//  Created by M on 11.11.2021.
//

import UIKit

class TestsViewController: UIViewController {

    var test: String = "test"

    
    @IBOutlet weak var startButton: UIButton!
    
    
    @IBOutlet weak var questionQount: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var firstAnswerButton: UIButton!
    @IBOutlet weak var secondAnswerButton: UIButton!
    @IBOutlet weak var thirdAnswerButton: UIButton!
    @IBOutlet weak var forthAnswerButton: UIButton!

    @IBOutlet weak var wordsLabel: UILabel!
    
    @IBOutlet weak var trueAnswersLabel: UILabel!
    
    @IBOutlet weak var helloLabel: UILabel!
    
    var helloText: String = "" //для передачи данных с 1 вц
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        addFoodWordsAnswer(Dictionary: foodWordsQuestion)
        
        view.backgroundColor = .systemGray
        trueAnswersLabel.text = String(trueAnswers)
        helloLabel.text = helloText //для передачи данных с 1 вц
        
    }
    
 
    @IBAction func backButtonPushed(_ sender: Any) {
        dismiss(animated: true)
    } //уезжаем на экран назад
    
    
 
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
//24.03 ковырял
    
 
    
        
        
        
        
        
        
        
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
        
        
    }

        
