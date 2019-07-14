//
//  ViewController.swift
//  PickerView
//
//  Created by Zoltan Puchovsky on 13/07/2019.
//  Copyright © 2019 Zoltan Puchovsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dayTextField: UITextField!
    
    let days = ["Squat",
                "Overhead Press",
                "Deadlift",
                "Bench Press"]
    
    var selectedDay: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDayPicker()
        // Do any additional setup after loading the view.
    }
    
    func createDayPicker() {
        let dayPicker = UIPickerView()
        dayPicker.delegate = self
        
        dayTextField.inputView = dayPicker
        
    }

}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return days.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return days[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        selectedDay = days[row]
        dayTextField.text = selectedDay
    }
    
}

