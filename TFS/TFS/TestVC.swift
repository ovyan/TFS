////
////  TestVC.swift
////  TFS
////
////  Created by Mike Ovyan on 20/02/2019.
////  Copyright © 2019 Mike Ovyan. All rights reserved.
////
//
//import UIKit
//
//class TestVC: UIViewController {
//
//    @IBOutlet private var 
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//    
//
//    
//}
//extension TestVC: UITableViewDataSource {
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 5
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! MyCell
//        cell.configure(title: "Kek", subtitle: "Kok")
//        return cell
//    }
//    
//}
//
//
//extension TestVC: UITableViewDelegate {
//    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Header"
//    }
//    
//    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
//        return "Header"
//    }
//    
//    
//}
//
//class MyCell: UITableViewCell {
//    @IBOutlet private var titleLabel: UILabel!
//    @IBOutlet private var subtitleLabel: UILabel!
//    
//    func configure(title: String, subtitle: String) {
//        titleLabel.text = title
//        subtitleLabel.text = subtitle
//    }
//    
//    
//}
