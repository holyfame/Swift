//
//  CustomTableViewController.swift
//  MereFirstAttempt
//
//  Created by Holyfame on 18.10.2021.
//

import UIKit

class CustomTableViewController: UIViewController {
    
    
    private let customView = CustomTableView()
    
    private var sectionNumber: Int = 3
    
    override func loadView() {
        self.view = customView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        customView.tableView.sectionHeaderHeight = UITableView.automaticDimension
        customView.tableView.register(PlanTableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
        customView.tableView.delegate = self
        customView.tableView.dataSource = self
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

extension CustomTableViewController : UITableViewDelegate {
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        sectionNumber
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "title for section number \(section)"
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = CustomTableHeaderView()
        headerView.update(dataModel: CustomHeaderViewModel(title: "mega title", subtitle: "section \(section)"))
        return headerView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! PlanTableViewCell
        cell.update(dataModel: PlanCellDataModel(title: "title for path \(indexPath)", isCompleted: false))
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        // delete sections
//        sectionNumber -= 1
//        customView.tableView.deleteSections([indexPath.section], with: .automatic)
//    }
    
}

extension CustomTableViewController: UITableViewDataSource {
    
}
