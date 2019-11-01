//
//  ViewController.swift
//  CardLayoutWithTable
//
//  Created by David Lawrence on 10/31/19.
//  Copyright © 2019 clarity for action. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var data = ["one", "two", "three", "four", "five", "six", "seven"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        registerTableViewCells()
    }
    
    
    func registerTableViewCells() {
        let customCell = UINib(nibName: "TableViewCell", bundle: nil)
        self.tableView.register(customCell, forCellReuseIdentifier: "TableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
//        let cellText = data[indexPath.row]
//        cell.textLabel?.text = cellText
        return cell
    }
    


}

