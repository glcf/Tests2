//
//  CategoriesViewController.swift
//  EnglishTests
//
//  Created by M on 12.11.2021.
//
import UIKit

class CategoriesViewController: UIViewController {
    
    @IBOutlet weak var categoryTwoButton: UIButton!
    @IBOutlet weak var categoryThreeButton: UIButton!
    @IBOutlet weak var categoryForthButton: UIButton!
    @IBOutlet weak var foodCategoryButton: UIButton!
    
    @IBOutlet weak var statisticButton: UIButton!
    @IBOutlet weak var settingsButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUICategoriesViewController()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewController = segue.destination as? TestsViewController else
        { return }
        //для передачи данных туда
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let viewController = segue.source as? TestsViewController else
        { return }
        //для передачи данных обратно
    }
}
