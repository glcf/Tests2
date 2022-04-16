//
//  Settings View Controller.swift
//  EnglishTests
//
//  Created by M on 12.11.2021.
//
import UIKit

class SettingsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var userNameTextfield: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var testLabel: UILabel!
    
    
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewController = segue.destination as? ViewController else
        { return }
        viewController.helloText = userNameTextfield.text ?? "error"
    } //для передачи данных туда
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let viewController = segue.source as? ViewController else
        { return }
        testLabel.text = viewController.questionLabel.text
    } //для передачи данных обратно
    

    
}
