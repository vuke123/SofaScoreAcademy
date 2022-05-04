//  CustomButton.swift
//  SofaAcademyMarch3
//
//  Created by Luka Vukelić on 30.03.2022..
//

import Foundation
import UIKit

class CustomButton: UIButton {

    private let myTitleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .center
        return label
    }()
    
    private let myIconView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    struct MyCustomButtonViewModel {
        let title: String
        let imageName: String
    }
    
    let viewModel: MyCustomButtonViewModel?
    
    init(with viewModel: MyCustomButtonViewModel){
        self.viewModel = viewModel
        super.init(frame:.zero)
        
        addSubviews()
        configure(with:  viewModel)
         
    }
    
    override init(frame: CGRect) {
        self.viewModel = nil
       super.init(frame: frame)
    // configure
    }
    private func addSubviews(){
        guard !myTitleLabel.isDescendant(of: self) else {
            return
        }
        addSubview(myTitleLabel)
        addSubview(myIconView)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public func configure(with viewModel: MyCustomButtonViewModel) {
        addSubviews()
        layer.masksToBounds = true
        layer.cornerRadius = 8
        layer.borderColor = UIColor.secondarySystemBackground.cgColor
        layer.borderWidth=1.5
        myTitleLabel.text = viewModel.title
        myIconView.image = UIImage(systemName: viewModel.imageName)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        myIconView.frame = CGRect(x: 5, y: 5, width: 50, height: frame.height).integral
        
        myTitleLabel.frame = CGRect(x: 60, y: 5, width: frame.width-65, height: (frame.height-10)/2).integral
        
    }
    
}


