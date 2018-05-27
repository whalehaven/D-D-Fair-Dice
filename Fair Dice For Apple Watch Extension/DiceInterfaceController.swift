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
    
    // MARK: UI outlet connections
    @IBOutlet var numberPicker: WKInterfacePicker!
    
    // MARK: Label outlet connections
    @IBOutlet var currentRollLabel: WKInterfaceLabel!
    @IBOutlet var previousRollLabel: WKInterfaceLabel!
    
    
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
