//
//  ViewController.swift
//  ReloadTableViewRow
//
//  Created by ProgrammingWithSwift on 2020/04/25.
//  Copyright © 2020 ProgrammingWithSwift. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var tableviewData = ["one", "two", "three", "four", "five", "six"]
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableview.delegate = self
        self.tableview.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableviewData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = self.tableviewData[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 3 {
            self.tableviewData[3] = "not four anymore"
        }

        self.tableview.reloadRows(at: [indexPath],
                                  with: .fade)
    }
}
