//
//  ProfileVC.swift
//  SofaAcademyMarch3
//
//  Created by Luka Vukelić on 30.03.2022..
//

import Foundation
import UIKit
import SnapKit

class ProfileVC: UIViewController {

    let label1 = CustomLabel()
    var position = Location()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray4
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
        if let title = title {
            getInfo(name: title)
        }
        addViews()
        setupConstraints()
        textStyle()
    }
    
    private func getInfo(name: String){
        NetworkManger.shared.getPosition(name: name) { [weak self] result in
            switch result {
            case .success(let position):
                self?.position = position
                print("moji dobiveni: \(position)")
            case .failure(let error):
                print("ne valja! -> \(error)")
            }
        }
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
        label1.textColor = .black
        label1.text = self.position.latt_long
    }
    
}
