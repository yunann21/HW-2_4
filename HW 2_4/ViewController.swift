//
//  ViewController.swift
//  HW 2_4
//
//  Created by Anna Ablogina on 01.02.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var colorValuesLabels: [UILabel]!
    @IBOutlet var colorView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        let label = colorValuesLabels[sender.tag]
        label.text = String(format: "%.2f", sender.value)
        
        var colors: [CGFloat] = []
        colorValuesLabels.forEach { label in
            colors.append(CGFloat(Float(label.text ?? "0") ?? 0))
        }
        
        colorView.backgroundColor = UIColor(
            red: colors[0],
            green: colors[1],
            blue: colors[2],
            alpha: 1
        )
    }
    
    private func setupUI() {
        colorView.layer.cornerRadius = 20

    }
    
}

