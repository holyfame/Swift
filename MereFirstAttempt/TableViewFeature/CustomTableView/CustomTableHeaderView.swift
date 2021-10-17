//
//  CustomTableHeaderView.swift
//  MereFirstAttempt
//
//  Created by Holyfame on 18.10.2021.
//

import UIKit

struct CustomHeaderViewModel {
    let title: String
    let subtitle: String
}

class CustomTableHeaderView: UIView {

    private let titleLabel = UILabel()
    private let subtitleLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemCyan
        [
            titleLabel,
            subtitleLabel
        ].forEach{
            self.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        setupConstraints()
    }
    
    func update(dataModel: CustomHeaderViewModel) {
        self.titleLabel.text = dataModel.title
        self.subtitleLabel.text = dataModel.subtitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraints() {
        [
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            subtitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            subtitleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8)
        ].forEach {
            $0.isActive = true
        }
    }
    
}
