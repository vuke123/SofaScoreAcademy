//
//  ProfileVC.swift
//  SofaAcademyMarch3
//
//  Created by Luka Vukelić on 30.03.2022..
//

import Foundation
import UIKit

class ProfileVC: UIViewController {

    let label1 = CustomLabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray4
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
        addViews()
        setupConstraints()
        textStyle()
    }
    
    private func addViews() {
        view
            .addSubviews(label1)
    }
    
    private func setupConstraints() {
        label1.snp.makeConstraints {
            $0.top.equalToSuperview().offset(150)
            $0.leading.equalToSuperview().offset(10)
        }
    }
    private func textStyle() {
        label1.textAlignment = .center
        label1.font = .preferredFont(forTextStyle: .title2)
        label1.text = "Still Learning.."
    }
    
}
