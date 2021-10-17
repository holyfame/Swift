//
//  CustomTableView.swift
//  MereFirstAttempt
//
//  Created by Holyfame on 18.10.2021.
//

import UIKit

final class CustomTableView: UIView {
    
    private let headerLabel: UILabel = {
        let label = UILabel()
        label.text = "THIS IS HEADER"
        label.textColor = .black
        return label
    }()

//    let tableView = UITableView(frame: .zero, style: .grouped)
    let tableView = UITableView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(headerLabel)
        addSubview(tableView)
        backgroundColor = .gray
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        [
            headerLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            headerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            tableView.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ].forEach{
            $0.isActive = true
        }
        super.updateConstraints()
    }
    
}
