//
//  ViewController.swift
//  MereFirstAttempt
//
//  Created by Holyfame on 27.09.2021.
//

import UIKit

class ViewController: UIViewController {

    private var currentColor: UIColor = .systemBlue

    @IBOutlet weak var tapMeView: UIView!
    @IBOutlet weak var tapMeButton: UIButton?
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var sliderVerticalConstraint: NSLayoutConstraint!
    @IBOutlet weak var sliderHorizontalConstraint: NSLayoutConstraint!
    
    
    @IBAction func buttonDidTap(_ sender: UIButton) {
//        let viewController = ManuallyCraftedViewController()
//        let viewController = TodayPlansTableViewController()
//        let viewController = CustomTableViewController()
        let viewController = CustomCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        
//        let viewController = getTabController()
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
//    private func getTabController() -> UITabBarController {
//        let tabBarController = UITabBarController()
//        tabBarController.viewControllers = [
//            CustomCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout()),
//            ManuallyCraftedViewController(),
//            CustomTableViewController()
//        ]
//        return tabBarController;
//    }
    
    
    @IBAction func segmentDidChange(_ sender: UISegmentedControl) {

        switch sender.selectedSegmentIndex {
        case .zero:
            self.slider.alpha = 0
            sliderVerticalConstraint?.priority = .defaultHigh
            sliderHorizontalConstraint?.priority = .defaultLow
            
        case 1:
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

