//
//  DiceViewController.swift
//  D&D Fair Dice
//
//  Created by Wills Blake on 5/7/18.
//  Copyright © 2018 Trap Card. All rights reserved.
//

import UIKit

class DiceViewController: UIViewController, UITextFieldDelegate
{
    
    
    //MARK: outlet connections from main storyboard
    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var titleField: UILabel!
    @IBOutlet weak var resultField: UILabel!
    @IBOutlet weak var upperBoundForRoll: UITextField!
    @IBOutlet weak var bottomStack: UIStackView!
    
    
    //MARK: logical die object instantiation
    var die = LogicalDie()
    
    //change status bar to light to consrast black background
    override var preferredStatusBarStyle: UIStatusBarStyle  {
        return .lightContent
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.upperBoundForRoll.delegate = self
        self.view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        setInitialBackgroundColorForBaseview()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
    
    //rollDice function performs random number generator operation on number specified in resultField
    @IBAction func rollDice(_ sender: UIButton)
    {
        if let textFromField = upperBoundForRoll.text
        {
            if let numberToRoll = Int(textFromField)
            {
                die.setTopNumber(withNumber: numberToRoll)
                let currentNumberResult = die.roll()
                die.setCurrentNumber(withNumber: currentNumberResult)
                resultField.text = String(currentNumberResult)
            }
        }
        
    }
    
    //MARK: functions
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func setInitialBackgroundColorForBaseview()
    {
        baseView.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
    }
    
    @IBAction func unwindToDiceViewController(sender: UIStoryboardSegue)
    {
        if let sourceViewController = sender.source as? SettingsTableViewController
        {
            baseView.backgroundColor = sourceViewController.currentColorChoice
            
        }
    }
    


}










