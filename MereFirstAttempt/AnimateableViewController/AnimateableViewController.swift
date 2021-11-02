//
//  AnimateableViewController.swift
//  MereFirstAttempt
//
//  Created by Holyfame on 02.11.2021.
//

import UIKit

class AnimateableViewController: UIViewController {
    
    
    @IBOutlet weak private var headerLabel: UILabel!
    @IBOutlet weak private var orangeView: UIView!
    @IBOutlet weak private var orangeViewCenterConstraint: NSLayoutConstraint!
    
    @IBAction func buttonDidClick(_ sender: Any) {
//        UIView.animateKeyframes(
//            withDuration: 2,
//            delay: 0,
//            options: .autoreverse,
//            animations: {
//                self.headerLabel.alpha = 0.3
//                self.orangeView.backgroundColor = .systemRed
//
//            },
//            completion: {
//                _ in self.headerLabel.alpha = 1
//                self.orangeView.backgroundColor = .systemOrange
//            }
//        )
        
//
//        DispatchQueue.main.async {
//            UIView.animate(
//                withDuration: 1,
//                delay: .zero,
//                options: .curveLinear,
//                animations: {
//
//                }
//            )
//        }
            
        self.orangeViewCenterConstraint.constant += 300
        UIView.animate(
            withDuration: 1,
            delay: .zero,
            options: .curveLinear,
            animations: {
//                self.orangeView.frame.origin.x += 300
                self.view.layoutIfNeeded()
                self.orangeView.alpha = .zero
                self.headerLabel.alpha = .zero
            }
        )
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
