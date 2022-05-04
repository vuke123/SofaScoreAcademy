//
//  CustomLabel.swift
//  SofaAcademyMarch3
//
//  Created by Luka Vukelić on 31.03.2022..
//

import Foundation
import UIKit

class CustomLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
   
    required init? (coder:NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    private func configure () {
        self.textColor = .systemGray2
    }
}
