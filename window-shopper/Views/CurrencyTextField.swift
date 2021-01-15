//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Mariel Pacada on 1/14/21.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    private func customizeView() {
        self.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        self.layer.cornerRadius = 5.0
        self.textAlignment = .center
        
        if let p = self.placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            self.attributedPlaceholder = place
            self.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
