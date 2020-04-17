//
//  GFTextField.swift
//  GHFollowers
//
//  Created by Can Balkaya on 4/2/20.
//  Copyright © 2020 Can Balkaya. All rights reserved.
//

import UIKit

class GFTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray4.cgColor
        
        textColor = .label
        tintColor = .label
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
        
        backgroundColor = .tertiarySystemGroupedBackground
        autocorrectionType = .no
        returnKeyType = .go
        clearButtonMode = .whileEditing 
        placeholder = "Enter a username"
        
        translatesAutoresizingMaskIntoConstraints = false
    }
}
