//
//  UIView+Extension.swift
//  SofaAcademyMarch3
//
//  Created by Luka Vukelić on 30.03.2022..
//

import Foundation
import UIKit

extension UIView {

    func addSubviews(_ views: UIView...) {
        views.forEach {
            addSubview($0)
        }
    }
}
