//
//  ViewController.swift
//  MasaKadai3
//
//  Created by Mina on 2022/10/17.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var leftNumberTextField: UITextField!
    @IBOutlet private weak var leftSwitch: UISwitch!
    @IBOutlet private weak var rightNumberTextField: UITextField!
    @IBOutlet private weak var rightSwitch: UISwitch!
    @IBOutlet private weak var leftNumberLabel: UILabel!
    @IBOutlet private weak var rightNumberLabel: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction private func resultButton(_ sender: Any) {
        var leftNumber = Int(leftNumberTextField.text ?? "") ?? 0
        var rightNumber = Int(rightNumberTextField.text ?? "") ?? 0

        if leftSwitch.isOn == true {
            leftNumberLabel.text = "-" + String(leftNumber)
            leftNumber *= -1
        } else {
            leftNumberLabel.text = String(leftNumber)
        }

        if rightSwitch.isOn == true {
            rightNumberLabel.text = "-" + String(rightNumber)
            rightNumber *= -1
        } else {
            rightNumberLabel.text = String(rightNumber)
        }

        resultLabel.text = String(leftNumber + rightNumber)
    }

}
