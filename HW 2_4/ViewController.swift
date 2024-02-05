//
//  ViewController.swift
//  HW 2_4
//
//  Created by Anna Ablogina on 01.02.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redLabelValue: UILabel!
    @IBOutlet var greenLabelValue: UILabel!
    @IBOutlet var blueLabelValue: UILabel!
    
    
    @IBOutlet var redSliderValue: UISlider!
    @IBOutlet var greenSliderValue: UISlider!
    @IBOutlet var blueSliderValue: UISlider!
    
    @IBOutlet var colorView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelColor(redSliderValue)
        getViewColor()
        colorView.layer.cornerRadius = 30
    }
    
    @IBAction func setLabelColor(_ sender: UISlider) {
        redLabelValue.text = String(format: "%.2f", redSliderValue.value)
        greenLabelValue.text = String(format: "%.2f", greenSliderValue.value)
        blueLabelValue.text = String(format: "%.2f", blueSliderValue.value)
        
        getViewColor()
    }
    
    func getViewColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSliderValue.value),
            green: CGFloat(greenSliderValue.value),
            blue: CGFloat(blueSliderValue.value),
            alpha: 1
        )
    }
    
    
}

