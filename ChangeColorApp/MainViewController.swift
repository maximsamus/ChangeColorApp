//
//  MainViewController.swift
//  ChangeColorApp
//
//  Created by Максим Самусь on 20.03.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setColor(_ color: UIColor)
}

class MainViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let setVC = segue.destination as? SettingsViewController else { return }
        setVC.mainViewColor = view.backgroundColor
        setVC.delegate = self
    }
}

// MARK: - SettingsViewControllerDelegate
extension MainViewController: SettingsViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
