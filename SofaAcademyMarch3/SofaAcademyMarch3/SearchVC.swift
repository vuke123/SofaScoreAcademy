//
//  SearchVC.swift
//  SofaAcademyMarch3
//
//  Created by Luka Vukelić on 30.03.2022..
//

import Foundation
import UIKit
import SnapKit
  
class SearchVC: UIViewController {

    let imageView = UIImageView()
    let secondImageView = UIImageView()
    let appleLabel = UILabel()
    let appleButton = UIButton()
    let textField1 = CustomTextField(insets: UIEdgeInsets(top:2, left:12, bottom:2, right: 12))
//    let button = CustomButton(frame: CGRect(x:0, y:0, width: 80, height:80))
    let button1 = CustomButton1(backgroundColor: .systemIndigo, mojTitle: "PressMe")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        addViews()
        styleViews()
        setupConstraints()
        createDismissKeyboardTapGesture()
        textField1.delegate = self
//        let viewModel = MyCustomButtonViewModel(title : "Custom", imageName: "")
        
    }

    private func addViews() {
        view
            .addSubviews(imageView,
                         secondImageView,
                         appleLabel,
                         textField1, button1)
    }

    private func createDismissKeyboardTapGesture() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tapGestureRecognizer)
    }

    private func pushVC() {
        guard let playerName = textField1.text,
              !playerName.isEmpty else {
              showAlert()
              return
        }
        let profileVC = ProfileVC()
        profileVC.title = textField1.text
        navigationController?.pushViewController(profileVC, animated: true)
    }

    private func styleViews() {
        imageView.image = .checkmark
        

        textField1.backgroundColor = .lightGray
        textField1.textColor = .label
        //        textField.returnKeyType = .retu
        //        textField.keyboardType = .decimalPad
        //        textField.returnKeyTy
        //        appleLabel.textAlignment = .
    }

    private func setupConstraints() {
        appleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(150)
            $0.leading.equalToSuperview().offset(50)
            $0.trailing.equalToSuperview().offset(-50)
            $0.bottom.equalTo(imageView.snp.top).offset(-50)
        }

         button1.snp.makeConstraints {
          $0.top.equalTo(imageView.snp.bottom).offset(50)
           $0.centerX.equalToSuperview()
         }

        imageView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.width.height.equalTo(200)
        }

        textField1.snp.makeConstraints {
            $0.bottom.equalTo(imageView.snp.top).offset(-20)
            $0.centerX.equalTo(imageView.snp.centerX)
            $0.width.equalTo(300)
            $0.height.equalTo(50)
        }
    }
    
    func showAlert(){
        let alert = UIAlertController(title:"Alert", message: "Type something...", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ignore", style: .cancel, handler: {action in
            print("tapped Ignore")
        }))
        present(alert, animated: true)
    }
}


extension SearchVC: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField1: UITextField) -> Bool {
        print("tapped return")
        pushVC()
        return true
    }
}
