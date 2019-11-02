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
        
        //tableView.rowHeight = 250
    }
    
    
    func registerTableViewCells() {
        let customCell = UINib(nibName: "TableViewCell", bundle: nil)
        self.tableView.register(customCell, forCellReuseIdentifier: "TableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        let cellText = data[indexPath.row]
        cell.labelForText.text = cellText
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let tableViewWidth = tableView.frame.width
        let tableViewCellPadding: CGFloat = 11
        let containerViewWidth = tableViewWidth - (tableViewCellPadding * 2)
        let largeImageWidth = containerViewWidth
        let largeImageHeight = largeImageWidth / 2
        let smallImageHeight: CGFloat = 48
        let smallImageMargin: CGFloat = 4
        let tableRowHeight = largeImageHeight + smallImageHeight + (smallImageMargin * 2) + (tableViewCellPadding * 2)
        print("large image height calculated as: \(largeImageHeight)")
        print("table row height calculated as: \(tableRowHeight)")
        return tableRowHeight
    }
    


}

