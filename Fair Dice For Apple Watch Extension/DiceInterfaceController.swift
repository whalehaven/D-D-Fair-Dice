//
//  InterfaceController.swift
//  Fair Dice For Apple Watch Extension
//
//  Created by Wills Blake on 5/26/18.
//  Copyright © 2018 Trap Card. All rights reserved.
//

import WatchKit
import Foundation


class DiceInterfaceController: WKInterfaceController {
    
    
    // MARK: Group interface connection setup
    @IBOutlet var userInterfaceGroup: WKInterfaceGroup!
    @IBOutlet var labelGroup: WKInterfaceGroup!
    
    // MARK: Delegate
    private var delegate = ExtensionDelegate()
    
    // MARK: UI outlet connections
    @IBOutlet var numberPicker: WKInterfacePicker!
    
    
    // MARK: Label outlet connections
    @IBOutlet var currentRollLabel: WKInterfaceLabel!
    @IBOutlet var previousRollLabel: WKInterfaceLabel!
    
    // instantiating logical die and var to store previous and current roll
    var die = LogicalDie()
    var previousRoll: Int?
    var currentRoll: Int?
    
    // MARK: Actions
    @IBAction func getValueFromPicker(index: Int)
    {
        die.setTopNumber(withNumber: (index + 1))
    }
    
    @IBAction func rollNumber() {
        updatePreviousNumberLabel()
        let rolledNumber = die.roll()
        die.setCurrentNumber(withNumber: rolledNumber)
        currentRoll = rolledNumber
        updateCurrentNumberLabel()
        
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        loadPickerValues()
        currentRoll = nil
        previousRoll = nil
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    private func setCurrentRollLabel(withText text: String)
    {
        currentRollLabel.setText("Current: " + text)
    }
    
    private func setPreviousRollLabel(withText text: String)
    {
        previousRollLabel.setText("Previous: " + text)
    }
    
    func loadPickerValues()
    {
        var pickerItems = [WKPickerItem]()
        for number in 1...50
        {
            let item = WKPickerItem()
            item.title = String(number)
            pickerItems += [item]
        }
        numberPicker.setItems(pickerItems)
        
    }
    
    func updatePreviousNumberLabel()
    {
        if let roll = currentRoll
        {
        setPreviousRollLabel(withText: String(roll))
        }
    }
    
    func updateCurrentNumberLabel()
    {
        if let roll = currentRoll
        {
        setCurrentRollLabel(withText: String(roll))
        }
    }
    

}














