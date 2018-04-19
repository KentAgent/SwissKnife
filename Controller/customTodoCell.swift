//
//  customTodoCell.swift
//  SwissKnife
//
//  Created by Daniel Martinsson on 2018-04-19.
//  Copyright © 2018 Georgios. All rights reserved.
//

import UIKit

class customTodoCell : UITableViewCell {
    
    @IBOutlet weak var todoLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
