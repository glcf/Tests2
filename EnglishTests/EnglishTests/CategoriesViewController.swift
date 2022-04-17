//
//  CategoriesViewController.swift
//  EnglishTests
//
//  Created by M on 12.11.2021.
//
import UIKit

class CategoriesViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "back") ?? UIImage.init()) 
    }
    

    @IBOutlet weak var loginButton: UIButton!

    
    
    

    
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
