//
//  TableViewCell.swift
//  CardLayoutWithTable
//
//  Created by David Lawrence on 11/1/19.
//  Copyright © 2019 clarity for action. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var labelForText: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //round the corners
        shadowView.layer.cornerRadius = 10
        containerView.layer.cornerRadius = 10
        
        //display a drop shadow
        shadowView.layer.shadowRadius = 5
        shadowView.layer.shadowOffset = .zero
        shadowView.layer.shadowOpacity = 0.5
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
