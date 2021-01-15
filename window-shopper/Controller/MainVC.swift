//
//  ViewController.swift
//  window-shopper
//
//  Created by Mariel Pacada on 1/7/21.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageText: CurrencyTextField!
    @IBOutlet weak var priceText: CurrencyTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createButton()
    }
    
    
    private func createButton() {
        let calcButton = UIButton(frame: CGRect(x:0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 1, green: 0.4360188165, blue: 0.2069842934, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageText.inputAccessoryView = calcButton
        priceText.inputAccessoryView = calcButton
    }
    
    @objc func calculate() {
        print("hi what is up")
    }
    
    
}

