//
//  ViewController.swift
//  ChangeColorApp
//
//  Created by Максим Самусь on 04.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mainView: UIView!
    @IBOutlet var red: UILabel!
    @IBOutlet var green: UILabel!
    @IBOutlet var blue: UILabel!
    
    @IBOutlet var redSliderValue: UILabel!
    @IBOutlet var greenSliderValue: UILabel!
    @IBOutlet var blueSliderValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 10
        red.text = "Red:"
        green.text = "Green:"
        blue.text = "Blue:"
        red.textColor = .white
        green.textColor = .white
        blue.textColor = .white
        
        redSlider.value = 0
        redSlider.maximumValue = 1
        redSlider.minimumValue = 0
        redSlider.tintColor = .red
        
        greenSlider.value = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumValue = 0
        greenSlider.tintColor = .green
        
        blueSlider.value = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumValue = 0
        blueSlider.tintColor = .blue
        
        redSliderValue.text = String(redSlider.value)
        greenSliderValue.text = String(greenSlider.value)
        blueSliderValue.text = String(blueSlider.value)
        redSliderValue.textColor = .white
        greenSliderValue.textColor = .white
        blueSliderValue.textColor = .white
    }
    
    @IBAction func redSliderAction() {
        redSliderValue.text = String(format: "%.2f", redSlider.value)
        changeColorView ()
    }
    
    @IBAction func greenSliderAction() {
        greenSliderValue.text = String(format: "%.2f", greenSlider.value)
        changeColorView ()
    }
    
    @IBAction func blueSliderAction() {
        blueSliderValue.text = String(format: "%.2f", blueSlider.value)
        changeColorView ()
    }
    
    func changeColorView () {
        
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        mainView.backgroundColor = color
    }
}
