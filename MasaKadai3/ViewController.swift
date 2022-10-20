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
        let leftNumber = Int(leftNumberTextField.text ?? "") ?? 0
        let rightNumber = Int(rightNumberTextField.text ?? "") ?? 0

        let leftSignedNumber: Int
        if leftSwitch.isOn == true {
            leftSignedNumber = -leftNumber
        } else {
            leftSignedNumber = leftNumber
        }

        let rightSignedNumber: Int
        if rightSwitch.isOn == true {
            rightSignedNumber = -rightNumber
        } else {
            rightSignedNumber = rightNumber
        }

        leftNumberLabel.text = String(leftSignedNumber)
        rightNumberLabel.text = String(rightSignedNumber)
        resultLabel.text = String(leftSignedNumber + rightSignedNumber)
    }

}
