//
//  ManuallyCraftedUIView.swift
//  MereFirstAttempt
//
//  Created by Holyfame on 29.09.2021.
//

import UIKit

class ManuallyCraftedUIView: UIView {
    
    private let headerLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.text = "Today's plans"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    private let firstPlanLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.text = "Steal underpants"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    private let secondPlanLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.text = "Profit"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    private let firstPlanSwitcher: UISwitch = {
        let switcher = UISwitch()
        switcher.onTintColor = .systemBlue
        return switcher
    }()
    
    private let secondPlanSwitcher: UISwitch = {
        let switcher = UISwitch()
        switcher.onTintColor = .systemBlue
        return switcher
    }()
    
    private let completeAllButton: UIButton = {
        let button = UIButton()
        button.setTitle("COMPLETE ALL", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        addSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubviews() {
        self.addSubview(headerLabel)
        self.addSubview(firstPlanLabel)
        self.addSubview(secondPlanLabel)
        self.addSubview(firstPlanSwitcher)
        self.addSubview(secondPlanSwitcher)
        self.addSubview(completeAllButton)
        self.subviews.forEach{ $0.translatesAutoresizingMaskIntoConstraints = false }
    }
    
    override func updateConstraints() {
        
//        let headerTopConstraint = NSLayoutConstraint(
//            item: headerLabel,
//            attribute:  .top,
//            relatedBy: .equal,
//            toItem: self,
//            attribute: .topMargin,
//            multiplier: 1,
//            constant: 16
//        )
//
//        let headerLeadingConstraint = NSLayoutConstraint(
//            item: headerLabel,
//            attribute:  .leading,
//            relatedBy: .equal,
//            toItem: self,
//            attribute: .leadingMargin,
//            multiplier: 1,
//            constant: 24
//        )
        
//        let firstPlanLabelTopConstraint = NSLayoutConstraint(
//            item: firstPlanLabel,
//            attribute: .top,
//            relatedBy: .equal,
//            toItem: headerLabel,
//            attribute: .bottom,
//            multiplier: 1,
//            constant: 40
//        )
//
//        let firstPlanLabelLeadingConstraint = NSLayoutConstraint(
//            item: firstPlanLabel,
//            attribute: .leading,
//            relatedBy: .equal,
//            toItem: self,
//            attribute: .leadingMargin,
//            multiplier: 1,
//            constant: 8
//        )
//
//        let secondPlanLabelTopConstraint = NSLayoutConstraint(
//            item: secondPlanLabel,
//            attribute: .top,
//            relatedBy: .equal,
//            toItem: firstPlanLabel,
//            attribute: .bottom,
//            multiplier: 1,
//            constant: 32
//        )
//
//        let secondPlanLabelLeadingConstraint = NSLayoutConstraint(
//            item: secondPlanLabel,
//            attribute: .leading,
//            relatedBy: .equal,
//            toItem: self,
//            attribute: .leadingMargin,
//            multiplier: 1,
//            constant: 8
//        )
//
//        let firstPlanCenterConstraint = NSLayoutConstraint(
//            item: firstPlanLabel,
//            attribute: .centerY,
//            relatedBy: .equal,
//            toItem: firstPlanSwitcher,
//            attribute: .centerY,
//            multiplier: 1,
//            constant: .zero
//        )
//
//        let secondPlanCenterConstraint = NSLayoutConstraint(
//            item: secondPlanLabel,
//            attribute: .centerY,
//            relatedBy: .equal,
//            toItem: secondPlanSwitcher,
//            attribute: .centerY,
//            multiplier: 1,
//            constant: .zero
//        )
//
//        let firstPlanSwitcherTrailingConstraint = NSLayoutConstraint(
//            item: firstPlanSwitcher,
//            attribute: .trailing,
//            relatedBy: .equal,
//            toItem: self,
//            attribute: .trailingMargin,
//            multiplier: 1,
//            constant: 8
//        )
//
//        let secondPlanSwitcherTrailingConstraint = NSLayoutConstraint(
//            item: secondPlanSwitcher,
//            attribute: .trailing,
//            relatedBy: .equal,
//            toItem: self,
//            attribute: .trailingMargin,
//            multiplier: 1,
//            constant: 8
//        )
//
//        NSLayoutConstraint.activate([
//            firstPlanLabelTopConstraint,
//            firstPlanLabelLeadingConstraint,
//            firstPlanCenterConstraint,
//            secondPlanLabelTopConstraint,
//            secondPlanLabelLeadingConstraint,
//            secondPlanCenterConstraint,
//            firstPlanSwitcherTrailingConstraint,
//            secondPlanSwitcherTrailingConstraint
//        ])
        
        secondPlanLabel.topAnchor.constraint(equalTo: firstPlanLabel.bottomAnchor, constant: 32).isActive = true
        secondPlanLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        
        headerLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 150).isActive = true
        headerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        
        firstPlanLabel.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 40).isActive = true
        firstPlanLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        
        firstPlanSwitcher.topAnchor.constraint(equalTo: firstPlanLabel.topAnchor).isActive = true
//        firstPlanSwitcher.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24).isActive = true
        firstPlanSwitcher.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24).isActive = true
        
        secondPlanSwitcher.topAnchor.constraint(equalTo: secondPlanLabel.topAnchor).isActive = true
//        secondPlanLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24).isActive = true
        secondPlanSwitcher.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24).isActive = true
        
        completeAllButton.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        completeAllButton.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        completeAllButton.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        completeAllButton.topAnchor.constraint(equalTo: completeAllButton.bottomAnchor, constant: -80).isActive = true
        
        super.updateConstraints()
    }
        
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
