//
//  CustomTextField.swift
//  SofaAcademyMarch3
//
//  Created by Luka Vukelić on 30.03.2022..
//

import Foundation
import UIKit

class CustomTextField: UITextField {
    
    let insets: UIEdgeInsets
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(insets: UIEdgeInsets){
        self.insets = insets
        super.init(frame:.zero)
        
        layer.cornerRadius = 9
        layer.borderWidth = 1.8
        layer.borderColor = UIColor.lightGray.cgColor
        placeholder = "I am a Custom UITextField"
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: insets)
        
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: insets)
    }
    
}

