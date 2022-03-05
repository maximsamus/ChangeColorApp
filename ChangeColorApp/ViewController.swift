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
        }
    

}

