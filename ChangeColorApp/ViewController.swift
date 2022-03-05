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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 10
        red.text = "Red"
        green.text = "Green"
        blue.text = "Blue"
        }


}

