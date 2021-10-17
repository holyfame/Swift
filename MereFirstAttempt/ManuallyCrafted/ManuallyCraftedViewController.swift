//
//  ManuallyCraftedViewController.swift
//  MereFirstAttempt
//
//  Created by Holyfame on 29.09.2021.
//

import UIKit

final class ManuallyCraftedViewController: UIViewController {

    private let customView = ManuallyCraftedUIView()
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
