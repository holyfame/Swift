//
//  ViewController.swift
//  MereFirstAttempt
//
//  Created by Holyfame on 27.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
//    override func loadView() {
//        print("load view")
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        print("viewWillAppear")
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        print("viewWillDisappear")
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        print("viewWillDisappear")
//    }
//
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        print("viewDidDisappear")
//    }
    
    private var currentColor: UIColor = .systemBlue

    
    @IBOutlet weak var tapMeView: UIView!
    @IBOutlet weak var tapMeButton: UIButton?
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var sliderVerticalConstraint: NSLayoutConstraint!
    @IBOutlet weak var sliderHorizontalConstraint: NSLayoutConstraint!
    
    
    @IBAction func buttonDidTap(_ sender: UIButton) {
//        print(tapMeButton?.superview?.backgroundColor == .systemIndigo)
        
//        tapMeButton?.setTitle("Tap me", for: .normal)
//
//        let currentColor: UIColor =
//        tapMeButton?.titleColor(for: .normal) == .systemBlue
//            ? .systemYellow
//            : .systemBlue
//
//        tapMeButton?.setTitleColor(currentColor, for: .normal)
        
//        let viewController = ManuallyCraftedViewController()
//        let viewController = TodayPlansTableViewController()
//        let viewController = CustomTableViewController()
        
        let layout = UICollectionViewFlowLayout()
        let viewController = CustomCollectionViewController(collectionViewLayout: layout)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    
    @IBAction func segmentDidChange(_ sender: UISegmentedControl) {
//        print(sender.selectedSegmentIndex)
//        tapMeButton?.isHidden = sender.selectedSegmentIndex == 1

        switch sender.selectedSegmentIndex {
        case .zero:
//            textField.isHidden = true
//            slider.isHidden = false
//            tapMeView.isHidden = false
            self.slider.alpha = 0
            sliderVerticalConstraint?.priority = .defaultHigh
            sliderHorizontalConstraint?.priority = .defaultLow
            
        case 1:
//            textField?.isHidden = false
//            slider.isHidden = true
//            tapMeView.isHidden = true
            self.slider.alpha = 1
            
            sliderVerticalConstraint?.priority = .defaultLow
            sliderHorizontalConstraint?.priority = .defaultHigh
            
        default:
            return
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.slider.alpha = 0
        self.sliderVerticalConstraint?.priority = .defaultHigh
        self.sliderHorizontalConstraint?.priority = .defaultLow
        
//        print("viewDidLoad")
    }
    
}

