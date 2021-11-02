//
//  HeaderCollectionReusableView.swift
//  MereFirstAttempt
//
//  Created by Holyfame on 18.10.2021.
//

import UIKit

final class HeaderCollectionReusableView: UICollectionReusableView {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "I'm label"
        label.textColor = .green
        label.font = UIFont.boldSystemFont(ofSize: 40)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
