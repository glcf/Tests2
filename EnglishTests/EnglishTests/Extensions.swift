//
//  Уч.swift
//  EnglishTests
//
//  Created by M on 17.04.2022.
//

import UIKit

extension CategoriesViewController {
    

    
    func updateUICategoriesViewController() {
        foodCategoryButton.clipsToBounds = true
        foodCategoryButton.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        foodCategoryButton.layer.cornerRadius = 20
        foodCategoryButton.titleLabel?.textColor = .init(white: 255, alpha: 1)
        categoryTwoButton.clipsToBounds = true
        categoryTwoButton.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        categoryTwoButton.layer.cornerRadius = 20
        categoryTwoButton.titleLabel?.textColor = .init(white: 255, alpha: 1)
        categoryThreeButton.clipsToBounds = true
        categoryThreeButton.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        categoryThreeButton.layer.cornerRadius = 20
        categoryThreeButton.titleLabel?.textColor = .init(white: 255, alpha: 1)
        categoryForthButton.clipsToBounds = true
        categoryForthButton.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        categoryForthButton.layer.cornerRadius = 20
        categoryForthButton.titleLabel?.textColor = .init(white: 255, alpha: 1)
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "words2") ?? UIImage.init(ciImage: .white))
    }
}

extension TestsViewController {
    
    func updateButtons() {
        poihaliButton.isHidden = true
        startLabel.isHidden = true
        questionLabel.isHidden = false
        firstAnswerButton.isHidden = false
        secondAnswerButton.isHidden = false
        thirdAnswerButton.isHidden = false
        forthAnswerButton.isHidden = false
        startButton.isHidden = false
        memojiLabel.isHidden = false
        foodImageView.isHidden = false
        backgroundFoodImageView.isHidden = false
//        memojiLabel.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
//        memojiLabel.color
        progressView.isHidden = false
        firstAnswerButton.isEnabled = true
        secondAnswerButton.isEnabled = true
        thirdAnswerButton.isEnabled = true
        forthAnswerButton.isEnabled = true
        questionLabel.layer.masksToBounds = true
    }
    
    func updateUITestsViewController() {
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "veg") ?? UIImage.init())
        

        
        firstAnswerButton.layer.cornerRadius = 10
        secondAnswerButton.layer.cornerRadius = 10
        thirdAnswerButton.layer.cornerRadius = 10
        forthAnswerButton.layer.cornerRadius = 10
        questionLabel.layer.cornerRadius = 10
        
        
        startButton.clipsToBounds = true
        startButton.layer.cornerRadius = 8
        progressView.progress = 0
        startButton.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        firstAnswerButton.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        secondAnswerButton.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        thirdAnswerButton.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        forthAnswerButton.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        questionLabel.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        poihaliButton.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        startLabel.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        memojiLabel.isHidden = true
        backgroundFoodImageView.isHidden = true
        poihaliButton.clipsToBounds = true
        poihaliButton.layer.cornerRadius = 20
        startLabel.text = "Вы выбрали категорию 'овощи и фрукты', в ней \(foodWordsQuestion.count) слов. Это почти все существующие. Удачи!"
        startLabel.clipsToBounds = true
        startLabel.layer.cornerRadius = 20
        memojiLabel.clipsToBounds = true
        memojiLabel.layer.cornerRadius = 50
        memojiLabel.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
     
        backgroundFoodImageView.layer.cornerRadius = 50
        backgroundFoodImageView.backgroundColor = UIColor.init(red: 40/255, green: 0/255, blue: 0/255, alpha: 1)
        foodImageView.clipsToBounds = true
        foodImageView.layer.cornerRadius = 45
        foodImageView.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        foodImageView.isHidden = true

        startButton.clipsToBounds = true
        startButton.layer.cornerRadius = 8
        startButton.backgroundColor = UIColor.init(red: 40/255, green: 38/255, blue: 38/255, alpha: 1)
        addFoodWordsAnswer(Dictionary: foodWordsQuestion)
        trueAnswersLabel.text = String(trueAnswers)
        //        helloLabel.text = helloText //для передачи данных с 1 вц
        questionLabel.isHidden = true
        firstAnswerButton.isHidden = true
        secondAnswerButton.isHidden = true
        thirdAnswerButton.isHidden = true
        forthAnswerButton.isHidden = true
        startButton.isHidden = true
        progressView.isHidden = true
    }
}
