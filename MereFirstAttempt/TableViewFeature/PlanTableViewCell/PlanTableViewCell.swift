//
//  PlanTableViewCell.swift
//  MereFirstAttempt
//
//  Created by Holyfame on 16.10.2021.
//

import UIKit

struct PlanCellDataModel {
    let title: String
    let isCompleted: Bool
}

class PlanTableViewCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubviews()
        setupConstraints()
        selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private let titleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 17)
        return label
    } ()
    
    private let completeSwitcher: UISwitch = {
        let switcher = UISwitch()
        switcher.onTintColor = .systemBlue
        return switcher
    }()
    
    private func addSubviews() {
        contentView.addSubview(titleLabel)
        contentView.addSubview(completeSwitcher)
        self.contentView.subviews.forEach{ $0.translatesAutoresizingMaskIntoConstraints = false }
    }
    
    func update(dataModel: PlanCellDataModel) {
        self.titleLabel.text = dataModel.title
        self.completeSwitcher.isOn = dataModel.isCompleted
    }
    
    func update(selection isOn: Bool) {
        completeSwitcher.isOn.toggle()
    }
    
    func setupConstraints() {
        
//        let titleLabelTopConstraint = NSLayoutConstraint(
//            item: titleLabel,
//            attribute: .top,
//            relatedBy: .equal,
//            toItem: self,
//            attribute: .top,
//            multiplier: 1,
//            constant: 8
//        )
//
//        let titleLableLeadingConstraint = NSLayoutConstraint(
//            item: titleLabel,
//            attribute: .leading,
//            relatedBy: .equal,
//            toItem: self,
//            attribute: .leadingMargin,
//            multiplier: 1,
//            constant: 8
//        )
//
//        let titleLabelCenterConstraint = NSLayoutConstraint(
//            item: titleLabel,
//            attribute: .centerY,
//            relatedBy: .equal,
//            toItem: completeSwitcher,
//            attribute: .centerY,
//            multiplier: 1,
//            constant: .zero
//        )
//
//        let completeSwitcherTrailingConstraint = NSLayoutConstraint(
//            item: completeSwitcher,
//            attribute: .trailing,
//            relatedBy: .equal,
//            toItem: self,
//            attribute: .trailingMargin,
//            multiplier: 1,
//            constant: 8
//        )
//
//        NSLayoutConstraint.activate([
//            titleLabelTopConstraint,
//            titleLableLeadingConstraint,
//            titleLabelCenterConstraint,
//            completeSwitcherTrailingConstraint
//        ])

        titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24).isActive = true
        
        completeSwitcher.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        completeSwitcher.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24).isActive = true

        super.updateConstraints()
    }

}
