//
//  MainViewController.swift
//  ColorApp
//
//  Created by Владимир Фалин on 12.07.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setBackgroundColor(backgroundColor: UIColor)
}

class MainViewController: UIViewController {
    
    var backgroundColor = UIColor.white
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = backgroundColor
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController
        else { return }

        settingsVC.currentColor = backgroundColor
        settingsVC.delegate = self
    }
    
}

//MARK: - SettingsViewControllerDelegate

extension MainViewController: SettingsViewControllerDelegate {
    func setBackgroundColor(backgroundColor: UIColor) {
        view.backgroundColor = backgroundColor
        self.backgroundColor = backgroundColor
    }
}
