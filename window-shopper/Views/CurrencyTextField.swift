//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Mariel Pacada on 1/14/21.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - (size / 2), width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 0.8444927377)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        
        currencyLabel.text = formatter.currencySymbol
        
        addSubview(currencyLabel)
        
    }
    
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
        self.clipsToBounds = true
        
        if let p = self.placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            self.attributedPlaceholder = place
            self.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
