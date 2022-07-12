//
//  MainViewController.swift
//  ColorApp
//
//  Created by Владимир Фалин on 12.07.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setBackgroundColor(red: Float, green: Float, blue: Float)
}

class MainViewController: UIViewController {
    
    var redColor: Float = 1
    var greenColor: Float = 1
    var blueColor: Float = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(
            red: CGFloat(redColor),
            green: CGFloat(greenColor),
            blue: CGFloat(blueColor),
            alpha: 1
        )
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController
        else { return }
        
        settingsVC.redColor = redColor
        settingsVC.greenColor = greenColor
        settingsVC.blueColor = blueColor
        settingsVC.delegate = self
    }
    
}

//MARK: - SettingsViewControllerDelegate

extension MainViewController: SettingsViewControllerDelegate {
    
    func setBackgroundColor(red: Float, green: Float, blue: Float) {
        
        view.backgroundColor = UIColor(
            red: CGFloat(red),
            green: CGFloat(green),
            blue: CGFloat(blue),
            alpha: 1
        )
        
        redColor = red
        greenColor = green
        blueColor = blue
    }
    
    
}
