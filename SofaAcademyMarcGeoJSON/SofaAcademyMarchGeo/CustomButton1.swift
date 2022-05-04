//
//  CustomButton1.swift
//  SofaAcademyMarch3
//
//  Created by Luka Vukelić on 31.03.2022..
//

import Foundation
import UIKit

@IBDesignable
class CustomButton1: UIButton {
    

   override init(frame: CGRect) {
        super.init(frame: frame)
   }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init(backgroundColor: UIColor, mojTitle: String, frame: CGRect) {
        super.init(frame:.zero)
        configure()
        self.backgroundColor = backgroundColor
        self.setTitle(mojTitle, for: .normal)
    }

    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        setTitleColor(.label, for: .normal)
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .title1)
        layer.cornerRadius = 20
        layer.borderWidth = 5
        layer.borderColor = UIColor.white.cgColor
        layer.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    }
}
