//
//  SettingsTableViewController.swift
//  D&D Fair Dice
//
//  Created by Wills Blake on 5/24/18.
//  Copyright © 2018 Trap Card. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //load table cell data
        loadColorChoices()
    }
    
    // MARK: Properties and Outlets
    @IBOutlet weak var doneButton: UIBarButtonItem!
    var colorList = [Color]()
    var currentColorChoice: UIColor?
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorList.count
    }
    
    // MARK: Actions
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //unique identifier for dequeue
        let cellIdentifier = "SettingsTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? SettingsTableViewCell else {
            fatalError("Cannot dequeue")
        }

        let colorChoice = colorList[indexPath.row]
        
        cell.settingsColor.backgroundColor = colorChoice.myColor
        cell.settingsLabel.text = colorChoice.colorName
        cell.settingsLabel.textColor = UIColor.white

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) as? SettingsTableViewCell
        {
            cell.accessoryType = .checkmark
            currentColorChoice = cell.settingsColor.backgroundColor
        }
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath)
        {
            cell.accessoryType = .none
        }
    }

    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        
    }
   
    
    
    private func loadColorChoices()
    {
        let color1 = Color(myColor: UIColor.black, colorName: "black")
        let color2 = Color(myColor: UIColor.green, colorName: "green")
        let color3 = Color(myColor: UIColor.orange, colorName: "orange")
        let color4 = Color(myColor: UIColor.purple, colorName: "purple")
        let color5 = Color(myColor: UIColor.blue, colorName: "blue")
        let color6 = Color(myColor: UIColor.darkGray, colorName: "dark grey")
        let color7 = Color(myColor: UIColor.red, colorName: "red")
        
        
        colorList += [color1, color2, color3, color4, color7, color6, color5]
    }

}
